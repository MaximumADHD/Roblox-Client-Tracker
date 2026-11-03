PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["existingNames"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 1
        7 JUMPIFNOTEQ                      R4 R5 ; [+3]
        9 LOADB                            R5 1
       10 RETURN                           R5 1
       11 FORGLOOP                         R0 2 ; [-6]
       13 LOADB                            R0 0
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isReservedName"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 LOADB                            R0 1
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["reservedNames"]
       11 LOADNIL                          R1
       12 LOADNIL                          R2
       13 FORGPREP                         R0
       14 GETUPVAL                         R5 1
       15 JUMPIFNOTEQ                      R4 R5 ; [+3]
       17 LOADB                            R5 1
       18 RETURN                           R5 1
       19 FORGLOOP                         R0 2 ; [-6]
       21 LOADB                            R0 0
       22 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["onResolved"]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["useState"]
       10 LOADK                            R2 K2 [""]
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 2
       13 CALL                             R3 0 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K3 ["getEngineFeatureDeviceSimulatorPerformance"]
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+15]
       19 GETTABLEKS                       R5 R0 K4 ["simulatorName"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K5 ["SIMULATOR_NAME"]
       24 JUMPIFNOTEQ                      R5 R6 ; [+9]
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K6 ["getSimulatorDisplayName"]
       29 MOVE                             R5 R3
       30 GETTABLEKS                       R6 R0 K4 ["simulatorName"]
       32 CALL                             R4 2 1
       33 JUMP                             ; [+7]
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K6 ["getSimulatorDisplayName"]
       37 MOVE                             R5 R3
       38 GETTABLEKS                       R6 R0 K4 ["simulatorName"]
       40 CALL                             R4 2 1
       41 LOADK                            R8 K7 ["^%s*(.-)%s*$"]
       42 NAMECALL                         R6 R1 K8 ["match"]
       44 CALL                             R6 2 1
       45 ORK                              R5 R6 K2 [""]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       49 NEWCLOSURE                       R7 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R5
       52 NEWTABLE                         R8 0 2
       54 GETTABLEKS                       R9 R0 K10 ["existingNames"]
       56 MOVE                             R10 R5
       57 SETLIST                          R8 R9 2 [1]
       59 CALL                             R6 2 1
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       63 NEWCLOSURE                       R8 P1
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R9 0 2
       69 GETTABLEKS                       R10 R0 K11 ["reservedNames"]
       71 MOVE                             R11 R5
       72 SETLIST                          R9 R10 2 [1]
       74 CALL                             R7 2 1
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R8 R8 K12 ["useCallback"]
       78 NEWCLOSURE                       R9 P2
       79 CAPTURE                          VAL R0
       80 NEWTABLE                         R10 0 1
       82 GETTABLEKS                       R11 R0 K13 ["onResolved"]
       84 SETLIST                          R10 R11 1 [1]
       86 CALL                             R8 2 1
       87 GETUPVAL                         R9 6
       88 GETUPVAL                         R10 7
       89 DUPTABLE                         R11 K26 [{["uri"], ["type"] = "Default", ["title"], ["description"], ["showIndeterminateProgressIndicator"] = False, ["width"] = 360, ["primaryAction"], ["secondaryAction"], ["escapeAction"]}]
       90 GETUPVAL                         R12 8
       91 SETTABLEKS                       R12 R11 K14 ["uri"]
       93 LOADK                            R14 K27 ["SavePreset"]
       94 LOADK                            R15 K28 ["Title"]
       95 DUPTABLE                         R16 K29 [{"simulatorName"}]
       96 SETTABLEKS                       R4 R16 K4 ["simulatorName"]
       98 NAMECALL                         R12 R3 K30 ["getText"]
      100 CALL                             R12 4 1
      101 SETTABLEKS                       R12 R11 K17 ["title"]
      103 JUMPIFNOT                        R7 ; [+9]
      104 LOADK                            R14 K27 ["SavePreset"]
      105 LOADK                            R15 K31 ["ReservedDescription"]
      106 DUPTABLE                         R16 K33 [{"presetName"}]
      107 SETTABLEKS                       R5 R16 K32 ["presetName"]
      109 NAMECALL                         R12 R3 K30 ["getText"]
      111 CALL                             R12 4 1
      112 JUMP                             ; [+15]
      113 JUMPIFNOT                        R6 ; [+9]
      114 LOADK                            R14 K27 ["SavePreset"]
      115 LOADK                            R15 K34 ["OverwriteDescription"]
      116 DUPTABLE                         R16 K33 [{"presetName"}]
      117 SETTABLEKS                       R5 R16 K32 ["presetName"]
      119 NAMECALL                         R12 R3 K30 ["getText"]
      121 CALL                             R12 4 1
      122 JUMP                             ; [+5]
      123 LOADK                            R14 K27 ["SavePreset"]
      124 LOADK                            R15 K35 ["Description"]
      125 NAMECALL                         R12 R3 K30 ["getText"]
      127 CALL                             R12 3 1
      128 SETTABLEKS                       R12 R11 K18 ["description"]
      130 DUPTABLE                         R12 K39 [{"uri", "text", "disabled", "onActivated"}]
      131 GETUPVAL                         R13 9
      132 GETTABLEKS                       R13 R13 K40 ["child"]
      134 GETUPVAL                         R14 8
      135 LOADK                            R15 K41 ["Save"]
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K14 ["uri"]
      139 LOADK                            R15 K27 ["SavePreset"]
      140 JUMPIFNOT                        R6 ; [+2]
      141 LOADK                            R16 K42 ["ReplaceAndApply"]
      142 JUMP                             ; [+1]
      143 LOADK                            R16 K43 ["SaveAndApply"]
      144 NAMECALL                         R13 R3 K30 ["getText"]
      146 CALL                             R13 3 1
      147 SETTABLEKS                       R13 R12 K36 ["text"]
      149 LOADB                            R13 1
      150 JUMPIFEQKS                       R5 K2 [""] ; [+2]
      152 MOVE                             R13 R7
      153 SETTABLEKS                       R13 R12 K37 ["disabled"]
      155 NEWCLOSURE                       R13 P3
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R0
      158 SETTABLEKS                       R13 R12 K38 ["onActivated"]
      160 SETTABLEKS                       R12 R11 K23 ["primaryAction"]
      162 DUPTABLE                         R12 K44 [{"uri", "text", "onActivated"}]
      163 GETUPVAL                         R13 9
      164 GETTABLEKS                       R13 R13 K40 ["child"]
      166 GETUPVAL                         R14 8
      167 LOADK                            R15 K45 ["Cancel"]
      168 CALL                             R13 2 1
      169 SETTABLEKS                       R13 R12 K14 ["uri"]
      171 LOADK                            R15 K46 ["Common"]
      172 LOADK                            R16 K45 ["Cancel"]
      173 NAMECALL                         R13 R3 K30 ["getText"]
      175 CALL                             R13 3 1
      176 SETTABLEKS                       R13 R12 K36 ["text"]
      178 SETTABLEKS                       R8 R12 K38 ["onActivated"]
      180 SETTABLEKS                       R12 R11 K24 ["secondaryAction"]
      182 DUPTABLE                         R12 K48 [{"uri", "onClose"}]
      183 GETUPVAL                         R13 9
      184 GETTABLEKS                       R13 R13 K40 ["child"]
      186 GETUPVAL                         R14 8
      187 LOADK                            R15 K49 ["Close"]
      188 CALL                             R13 2 1
      189 SETTABLEKS                       R13 R12 K14 ["uri"]
      191 SETTABLEKS                       R8 R12 K47 ["onClose"]
      193 SETTABLEKS                       R12 R11 K25 ["escapeAction"]
      195 DUPTABLE                         R12 K51 [{"Body"}]
      196 GETUPVAL                         R13 6
      197 GETUPVAL                         R14 10
      198 DUPTABLE                         R15 K56 [{["tag"] = "col gap-small size-full-0 auto-y", ["testId"] = "save-preset-body"}]
      199 DUPTABLE                         R16 K58 [{"Name"}]
      200 GETUPVAL                         R17 6
      201 GETUPVAL                         R18 11
      202 DUPTABLE                         R19 K67 [{["LayoutOrder"] = 1, ["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["width"], ["size"], ["variant"], ["testId"] = "save-preset-name"}]
      203 SETTABLEKS                       R1 R19 K36 ["text"]
      205 LOADK                            R22 K27 ["SavePreset"]
      206 LOADK                            R23 K68 ["NamePlaceholder"]
      207 NAMECALL                         R20 R3 K30 ["getText"]
      209 CALL                             R20 3 1
      210 SETTABLEKS                       R20 R19 K62 ["placeholder"]
      212 SETTABLEKS                       R2 R19 K63 ["onChanged"]
      214 GETIMPORT                        R20 K71 [UDim.new]
      216 LOADN                            R21 1
      217 LOADN                            R22 0
      218 CALL                             R20 2 1
      219 SETTABLEKS                       R20 R19 K21 ["width"]
      221 GETUPVAL                         R20 12
      222 GETTABLEKS                       R20 R20 K72 ["Small"]
      224 SETTABLEKS                       R20 R19 K64 ["size"]
      226 GETUPVAL                         R20 13
      227 GETTABLEKS                       R20 R20 K73 ["Contrast"]
      229 SETTABLEKS                       R20 R19 K65 ["variant"]
      231 CALL                             R17 2 1
      232 SETTABLEKS                       R17 R16 K57 ["Name"]
      234 CALL                             R13 3 1
      235 SETTABLEKS                       R13 R12 K50 ["Body"]
      237 CALL                             R9 3 -1
      238 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Bin"]
       32 GETTABLEKS                       R5 R5 K11 ["Common"]
       34 GETTABLEKS                       R5 R5 K12 ["defineLuaFlags"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["networkLocalization"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K13 ["Parent"]
       52 GETTABLEKS                       R7 R7 K15 ["performanceLocalization"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K13 ["Parent"]
       61 GETTABLEKS                       R8 R8 K16 ["presetSchema"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K17 ["Src"]
       68 GETTABLEKS                       R9 R9 K18 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K19 ["useLocalization"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R3 K20 ["Components"]
       75 GETTABLEKS                       R9 R9 K21 ["Dialog"]
       77 GETTABLEKS                       R10 R2 K22 ["Enums"]
       79 GETTABLEKS                       R10 R10 K23 ["InputSize"]
       81 GETTABLEKS                       R11 R2 K22 ["Enums"]
       83 GETTABLEKS                       R11 R11 K24 ["InputVariant"]
       85 GETTABLEKS                       R12 R3 K25 ["Util"]
       87 GETTABLEKS                       R12 R12 K26 ["StudioUri"]
       89 GETTABLEKS                       R13 R2 K27 ["TextInput"]
       91 GETTABLEKS                       R14 R2 K28 ["View"]
       93 GETTABLEKS                       R15 R1 K29 ["createElement"]
       95 GETTABLEKS                       R16 R12 K30 ["fromWidget"]
       97 LOADK                            R17 K2 ["DeviceSimulatorToolbar"]
       98 LOADK                            R18 K31 ["SavePresetDialog"]
       99 CALL                             R16 2 1
      100 DUPCLOSURE                       R17 K32 [PROTO_4]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R11
      115 GETTABLEKS                       R18 R1 K33 ["memo"]
      117 MOVE                             R19 R17
      118 CALL                             R18 1 -1
      119 RETURN                           R18 -1
