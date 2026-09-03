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
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["getSimulatorDisplayName"]
       17 MOVE                             R5 R3
       18 GETTABLEKS                       R6 R0 K4 ["simulatorName"]
       20 CALL                             R4 2 1
       21 LOADK                            R8 K5 ["^%s*(.-)%s*$"]
       22 NAMECALL                         R6 R1 K6 ["match"]
       24 CALL                             R6 2 1
       25 ORK                              R5 R6 K2 [""]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R5
       32 NEWTABLE                         R8 0 2
       34 GETTABLEKS                       R9 R0 K8 ["existingNames"]
       36 MOVE                             R10 R5
       37 SETLIST                          R8 R9 2 [1]
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       43 NEWCLOSURE                       R8 P1
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R9 0 2
       49 GETTABLEKS                       R10 R0 K9 ["reservedNames"]
       51 MOVE                             R11 R5
       52 SETLIST                          R9 R10 2 [1]
       54 CALL                             R7 2 1
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       58 NEWCLOSURE                       R9 P2
       59 CAPTURE                          VAL R0
       60 NEWTABLE                         R10 0 1
       62 GETTABLEKS                       R11 R0 K11 ["onResolved"]
       64 SETLIST                          R10 R11 1 [1]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 5
       68 GETUPVAL                         R10 6
       69 DUPTABLE                         R11 K24 [{["uri"], ["type"] = "Default", ["title"], ["description"], ["showIndeterminateProgressIndicator"] = False, ["width"] = 360, ["primaryAction"], ["secondaryAction"], ["escapeAction"]}]
       70 GETUPVAL                         R12 7
       71 SETTABLEKS                       R12 R11 K12 ["uri"]
       73 LOADK                            R14 K25 ["SavePreset"]
       74 LOADK                            R15 K26 ["Title"]
       75 DUPTABLE                         R16 K27 [{"simulatorName"}]
       76 SETTABLEKS                       R4 R16 K4 ["simulatorName"]
       78 NAMECALL                         R12 R3 K28 ["getText"]
       80 CALL                             R12 4 1
       81 SETTABLEKS                       R12 R11 K15 ["title"]
       83 JUMPIFNOT                        R7 ; [+9]
       84 LOADK                            R14 K25 ["SavePreset"]
       85 LOADK                            R15 K29 ["ReservedDescription"]
       86 DUPTABLE                         R16 K31 [{"presetName"}]
       87 SETTABLEKS                       R5 R16 K30 ["presetName"]
       89 NAMECALL                         R12 R3 K28 ["getText"]
       91 CALL                             R12 4 1
       92 JUMP                             ; [+15]
       93 JUMPIFNOT                        R6 ; [+9]
       94 LOADK                            R14 K25 ["SavePreset"]
       95 LOADK                            R15 K32 ["OverwriteDescription"]
       96 DUPTABLE                         R16 K31 [{"presetName"}]
       97 SETTABLEKS                       R5 R16 K30 ["presetName"]
       99 NAMECALL                         R12 R3 K28 ["getText"]
      101 CALL                             R12 4 1
      102 JUMP                             ; [+5]
      103 LOADK                            R14 K25 ["SavePreset"]
      104 LOADK                            R15 K33 ["Description"]
      105 NAMECALL                         R12 R3 K28 ["getText"]
      107 CALL                             R12 3 1
      108 SETTABLEKS                       R12 R11 K16 ["description"]
      110 DUPTABLE                         R12 K37 [{"uri", "text", "disabled", "onActivated"}]
      111 GETUPVAL                         R13 8
      112 GETTABLEKS                       R13 R13 K38 ["child"]
      114 GETUPVAL                         R14 7
      115 LOADK                            R15 K39 ["Save"]
      116 CALL                             R13 2 1
      117 SETTABLEKS                       R13 R12 K12 ["uri"]
      119 LOADK                            R15 K25 ["SavePreset"]
      120 JUMPIFNOT                        R6 ; [+2]
      121 LOADK                            R16 K40 ["ReplaceAndApply"]
      122 JUMP                             ; [+1]
      123 LOADK                            R16 K41 ["SaveAndApply"]
      124 NAMECALL                         R13 R3 K28 ["getText"]
      126 CALL                             R13 3 1
      127 SETTABLEKS                       R13 R12 K34 ["text"]
      129 LOADB                            R13 1
      130 JUMPIFEQKS                       R5 K2 [""] ; [+2]
      132 MOVE                             R13 R7
      133 SETTABLEKS                       R13 R12 K35 ["disabled"]
      135 NEWCLOSURE                       R13 P3
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R13 R12 K36 ["onActivated"]
      140 SETTABLEKS                       R12 R11 K21 ["primaryAction"]
      142 DUPTABLE                         R12 K42 [{"uri", "text", "onActivated"}]
      143 GETUPVAL                         R13 8
      144 GETTABLEKS                       R13 R13 K38 ["child"]
      146 GETUPVAL                         R14 7
      147 LOADK                            R15 K43 ["Cancel"]
      148 CALL                             R13 2 1
      149 SETTABLEKS                       R13 R12 K12 ["uri"]
      151 LOADK                            R15 K44 ["Common"]
      152 LOADK                            R16 K43 ["Cancel"]
      153 NAMECALL                         R13 R3 K28 ["getText"]
      155 CALL                             R13 3 1
      156 SETTABLEKS                       R13 R12 K34 ["text"]
      158 SETTABLEKS                       R8 R12 K36 ["onActivated"]
      160 SETTABLEKS                       R12 R11 K22 ["secondaryAction"]
      162 DUPTABLE                         R12 K46 [{"uri", "onClose"}]
      163 GETUPVAL                         R13 8
      164 GETTABLEKS                       R13 R13 K38 ["child"]
      166 GETUPVAL                         R14 7
      167 LOADK                            R15 K47 ["Close"]
      168 CALL                             R13 2 1
      169 SETTABLEKS                       R13 R12 K12 ["uri"]
      171 SETTABLEKS                       R8 R12 K45 ["onClose"]
      173 SETTABLEKS                       R12 R11 K23 ["escapeAction"]
      175 DUPTABLE                         R12 K49 [{"Body"}]
      176 GETUPVAL                         R13 5
      177 GETUPVAL                         R14 9
      178 DUPTABLE                         R15 K54 [{["tag"] = "col gap-small size-full-0 auto-y", ["testId"] = "save-preset-body"}]
      179 DUPTABLE                         R16 K56 [{"Name"}]
      180 GETUPVAL                         R17 5
      181 GETUPVAL                         R18 10
      182 DUPTABLE                         R19 K65 [{["LayoutOrder"] = 1, ["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["width"], ["size"], ["variant"], ["testId"] = "save-preset-name"}]
      183 SETTABLEKS                       R1 R19 K34 ["text"]
      185 LOADK                            R22 K25 ["SavePreset"]
      186 LOADK                            R23 K66 ["NamePlaceholder"]
      187 NAMECALL                         R20 R3 K28 ["getText"]
      189 CALL                             R20 3 1
      190 SETTABLEKS                       R20 R19 K60 ["placeholder"]
      192 SETTABLEKS                       R2 R19 K61 ["onChanged"]
      194 GETIMPORT                        R20 K69 [UDim.new]
      196 LOADN                            R21 1
      197 LOADN                            R22 0
      198 CALL                             R20 2 1
      199 SETTABLEKS                       R20 R19 K19 ["width"]
      201 GETUPVAL                         R20 11
      202 GETTABLEKS                       R20 R20 K70 ["Small"]
      204 SETTABLEKS                       R20 R19 K62 ["size"]
      206 GETUPVAL                         R20 12
      207 GETTABLEKS                       R20 R20 K71 ["Contrast"]
      209 SETTABLEKS                       R20 R19 K63 ["variant"]
      211 CALL                             R17 2 1
      212 SETTABLEKS                       R17 R16 K55 ["Name"]
      214 CALL                             R13 3 1
      215 SETTABLEKS                       R13 R12 K48 ["Body"]
      217 CALL                             R9 3 -1
      218 RETURN                           R9 -1

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
       52 GETTABLEKS                       R7 R7 K15 ["presetSchema"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K16 ["Src"]
       59 GETTABLEKS                       R8 R8 K17 ["Hooks"]
       61 GETTABLEKS                       R8 R8 K18 ["useLocalization"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R3 K19 ["Components"]
       66 GETTABLEKS                       R8 R8 K20 ["Dialog"]
       68 GETTABLEKS                       R9 R2 K21 ["Enums"]
       70 GETTABLEKS                       R9 R9 K22 ["InputSize"]
       72 GETTABLEKS                       R10 R2 K21 ["Enums"]
       74 GETTABLEKS                       R10 R10 K23 ["InputVariant"]
       76 GETTABLEKS                       R11 R3 K24 ["Util"]
       78 GETTABLEKS                       R11 R11 K25 ["StudioUri"]
       80 GETTABLEKS                       R12 R2 K26 ["TextInput"]
       82 GETTABLEKS                       R13 R2 K27 ["View"]
       84 GETTABLEKS                       R14 R1 K28 ["createElement"]
       86 GETTABLEKS                       R15 R11 K29 ["fromWidget"]
       88 LOADK                            R16 K2 ["DeviceSimulatorToolbar"]
       89 LOADK                            R17 K30 ["SavePresetDialog"]
       90 CALL                             R15 2 1
       91 DUPCLOSURE                       R16 K31 [PROTO_4]
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R10
      105 GETTABLEKS                       R17 R1 K32 ["memo"]
      107 MOVE                             R18 R16
      108 CALL                             R17 1 -1
      109 RETURN                           R17 -1
