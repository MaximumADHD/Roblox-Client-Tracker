PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["store"]
        2 GETTABLEKS                       R3 R0 K1 ["environment"]
        4 JUMPIFEQKS                       R3 K2 ["Production"] ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 GETTABLEKS                       R3 R0 K3 ["plugin"]
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R4 0
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 JUMP                             ; [+4]
       15 GETIMPORT                        R4 K6 [Instance.new]
       17 LOADK                            R5 K7 ["StyleSheet"]
       18 CALL                             R4 1 1
       19 JUMPIFNOT                        R2 ; [+15]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K5 ["new"]
       23 DUPTABLE                         R6 K11 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       24 GETUPVAL                         R7 2
       25 SETTABLEKS                       R7 R6 K8 ["stringResourceTable"]
       27 GETUPVAL                         R7 3
       28 SETTABLEKS                       R7 R6 K9 ["translationResourceTable"]
       30 LOADK                            R7 K12 ["AssetImporter"]
       31 SETTABLEKS                       R7 R6 K10 ["pluginName"]
       33 CALL                             R5 1 1
       34 JUMP                             ; [+4]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K13 ["mock"]
       38 CALL                             R5 0 1
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R6 R7 K5 ["new"]
       42 MOVE                             R7 R3
       43 MOVE                             R8 R1
       44 MOVE                             R9 R5
       45 CALL                             R6 3 1
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R7 R8 K5 ["new"]
       49 CALL                             R7 0 1
       50 GETUPVAL                         R9 6
       51 GETTABLEKS                       R8 R9 K5 ["new"]
       53 MOVE                             R9 R7
       54 CALL                             R8 1 1
       55 DUPTABLE                         R9 K27 [{"Plugin", "PluginLoaderContextItem", "Design", "Focus", "Localization", "Mouse", "Store", "Theme", "CalloutController", "FileController", "UploadController", "PresetController", "Networking"}]
       56 GETUPVAL                         R12 7
       57 GETTABLEKS                       R11 R12 K14 ["Plugin"]
       59 GETTABLEKS                       R10 R11 K5 ["new"]
       61 MOVE                             R11 R3
       62 CALL                             R10 1 1
       63 SETTABLEKS                       R10 R9 K14 ["Plugin"]
       65 GETTABLEKS                       R10 R0 K28 ["loader"]
       67 SETTABLEKS                       R10 R9 K15 ["PluginLoaderContextItem"]
       69 JUMPIFNOT                        R2 ; [+6]
       70 GETUPVAL                         R11 8
       71 GETTABLEKS                       R10 R11 K5 ["new"]
       73 MOVE                             R11 R4
       74 CALL                             R10 1 1
       75 JUMP                             ; [+5]
       76 GETUPVAL                         R11 8
       77 GETTABLEKS                       R10 R11 K13 ["mock"]
       79 MOVE                             R11 R4
       80 CALL                             R10 1 1
       81 SETTABLEKS                       R10 R9 K16 ["Design"]
       83 GETUPVAL                         R11 9
       84 GETTABLEKS                       R10 R11 K5 ["new"]
       86 GETIMPORT                        R11 K6 [Instance.new]
       88 LOADK                            R12 K29 ["ScreenGui"]
       89 CALL                             R11 1 -1
       90 CALL                             R10 -1 1
       91 SETTABLEKS                       R10 R9 K17 ["Focus"]
       93 SETTABLEKS                       R5 R9 K18 ["Localization"]
       95 GETUPVAL                         R11 10
       96 GETTABLEKS                       R10 R11 K5 ["new"]
       98 NAMECALL                         R11 R3 K30 ["GetMouse"]
      100 CALL                             R11 1 -1
      101 CALL                             R10 -1 1
      102 SETTABLEKS                       R10 R9 K19 ["Mouse"]
      104 GETUPVAL                         R11 11
      105 GETTABLEKS                       R10 R11 K5 ["new"]
      107 MOVE                             R11 R1
      108 CALL                             R10 1 1
      109 SETTABLEKS                       R10 R9 K20 ["Store"]
      111 GETUPVAL                         R10 12
      112 NOT                              R11 R2
      113 CALL                             R10 1 1
      114 SETTABLEKS                       R10 R9 K21 ["Theme"]
      116 JUMPIFNOT                        R2 ; [+5]
      117 GETUPVAL                         R11 13
      118 GETTABLEKS                       R10 R11 K5 ["new"]
      120 CALL                             R10 0 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R10
      123 SETTABLEKS                       R10 R9 K22 ["CalloutController"]
      125 GETUPVAL                         R11 14
      126 GETTABLEKS                       R10 R11 K5 ["new"]
      128 MOVE                             R11 R1
      129 MOVE                             R12 R6
      130 MOVE                             R13 R8
      131 MOVE                             R14 R2
      132 CALL                             R10 4 1
      133 SETTABLEKS                       R10 R9 K23 ["FileController"]
      135 GETUPVAL                         R11 15
      136 GETTABLEKS                       R10 R11 K5 ["new"]
      138 MOVE                             R11 R1
      139 MOVE                             R12 R5
      140 MOVE                             R13 R8
      141 MOVE                             R14 R6
      142 CALL                             R10 4 1
      143 SETTABLEKS                       R10 R9 K24 ["UploadController"]
      145 SETTABLEKS                       R6 R9 K25 ["PresetController"]
      147 GETUPVAL                         R11 16
      148 GETTABLEKS                       R10 R11 K5 ["new"]
      150 MOVE                             R11 R1
      151 NOT                              R12 R2
      152 CALL                             R10 2 1
      153 SETTABLEKS                       R10 R9 K26 ["Networking"]
      155 GETUPVAL                         R11 17
      156 GETTABLEKS                       R10 R11 K5 ["new"]
      158 MOVE                             R11 R1
      159 MOVE                             R12 R6
      160 CALL                             R10 2 1
      161 SETTABLEKS                       R10 R9 K31 ["QueueController"]
      163 GETUPVAL                         R12 18
      164 FASTCALL2                        SETMETATABLE R9 R12 ; [+4]
      166 MOVE                             R11 R9
      167 GETIMPORT                        R10 K33 [setmetatable]
      169 CALL                             R10 2 1
      170 RETURN                           R10 1

PROTO_1:
        0 NEWTABLE                         R1 0 14
        2 GETTABLEKS                       R2 R0 K0 ["Plugin"]
        4 GETTABLEKS                       R3 R0 K1 ["PluginLoaderContextItem"]
        6 GETTABLEKS                       R4 R0 K2 ["Design"]
        8 GETTABLEKS                       R5 R0 K3 ["Localization"]
       10 GETTABLEKS                       R6 R0 K4 ["Mouse"]
       12 GETTABLEKS                       R7 R0 K5 ["Focus"]
       14 GETTABLEKS                       R8 R0 K6 ["Store"]
       16 GETTABLEKS                       R9 R0 K7 ["Theme"]
       18 GETTABLEKS                       R10 R0 K8 ["CalloutController"]
       20 GETTABLEKS                       R11 R0 K9 ["FileController"]
       22 GETTABLEKS                       R12 R0 K10 ["PresetController"]
       24 GETTABLEKS                       R13 R0 K11 ["QueueController"]
       26 GETTABLEKS                       R14 R0 K12 ["UploadController"]
       28 GETTABLEKS                       R15 R0 K13 ["Networking"]
       30 SETLIST                          R1 R2 14 [1]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K14 ["values"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 -1
       37 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Design"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["Design"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["Localization"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["Localization"]
       13 NAMECALL                         R1 R1 K1 ["destroy"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K3 ["Store"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K3 ["Store"]
       21 NAMECALL                         R1 R1 K1 ["destroy"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K4 ["CalloutController"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R1 R0 K4 ["CalloutController"]
       29 NAMECALL                         R1 R1 K1 ["destroy"]
       31 CALL                             R1 1 0
       32 GETTABLEKS                       R1 R0 K5 ["FileController"]
       34 JUMPIFNOT                        R1 ; [+5]
       35 GETTABLEKS                       R1 R0 K5 ["FileController"]
       37 NAMECALL                         R1 R1 K1 ["destroy"]
       39 CALL                             R1 1 0
       40 GETTABLEKS                       R1 R0 K6 ["PresetController"]
       42 JUMPIFNOT                        R1 ; [+5]
       43 GETTABLEKS                       R1 R0 K6 ["PresetController"]
       45 NAMECALL                         R1 R1 K1 ["destroy"]
       47 CALL                             R1 1 0
       48 GETTABLEKS                       R1 R0 K7 ["QueueController"]
       50 JUMPIFNOT                        R1 ; [+5]
       51 GETTABLEKS                       R1 R0 K7 ["QueueController"]
       53 NAMECALL                         R1 R1 K1 ["destroy"]
       55 CALL                             R1 1 0
       56 GETTABLEKS                       R1 R0 K8 ["UploadController"]
       58 JUMPIFNOT                        R1 ; [+5]
       59 GETTABLEKS                       R1 R0 K8 ["UploadController"]
       61 NAMECALL                         R1 R1 K1 ["destroy"]
       63 CALL                             R1 1 0
       64 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["PluginLoader"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["TelemetryProtocol"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Design"]
       39 GETTABLEKS                       R7 R5 K13 ["Localization"]
       41 GETTABLEKS                       R8 R5 K14 ["Store"]
       43 GETTABLEKS                       R9 R5 K15 ["Focus"]
       45 GETTABLEKS                       R10 R5 K16 ["Mouse"]
       47 GETTABLEKS                       R12 R2 K17 ["Styling"]
       49 GETTABLEKS                       R11 R12 K18 ["registerPluginStyles"]
       51 GETTABLEKS                       R13 R0 K19 ["Src"]
       53 GETTABLEKS                       R12 R13 K20 ["Controllers"]
       55 GETIMPORT                        R13 K5 [require]
       57 GETTABLEKS                       R14 R12 K21 ["CalloutController"]
       59 CALL                             R13 1 1
       60 GETIMPORT                        R14 K5 [require]
       62 GETTABLEKS                       R15 R12 K22 ["PresetController"]
       64 CALL                             R14 1 1
       65 GETIMPORT                        R15 K5 [require]
       67 GETTABLEKS                       R16 R12 K23 ["FileController"]
       69 CALL                             R15 1 1
       70 GETIMPORT                        R16 K5 [require]
       72 GETTABLEKS                       R17 R12 K24 ["QueueController"]
       74 CALL                             R16 1 1
       75 GETIMPORT                        R17 K5 [require]
       77 GETTABLEKS                       R18 R12 K25 ["UploadController"]
       79 CALL                             R17 1 1
       80 GETIMPORT                        R18 K5 [require]
       82 GETTABLEKS                       R19 R12 K26 ["Networking"]
       84 CALL                             R18 1 1
       85 GETIMPORT                        R19 K5 [require]
       87 GETTABLEKS                       R22 R0 K19 ["Src"]
       89 GETTABLEKS                       R21 R22 K27 ["Resources"]
       91 GETTABLEKS                       R20 R21 K28 ["MakeTheme"]
       93 CALL                             R19 1 1
       94 GETTABLEKS                       R23 R0 K19 ["Src"]
       96 GETTABLEKS                       R22 R23 K27 ["Resources"]
       98 GETTABLEKS                       R21 R22 K13 ["Localization"]
      100 GETTABLEKS                       R20 R21 K29 ["SourceStrings"]
      102 GETTABLEKS                       R24 R0 K19 ["Src"]
      104 GETTABLEKS                       R23 R24 K27 ["Resources"]
      106 GETTABLEKS                       R22 R23 K13 ["Localization"]
      108 GETTABLEKS                       R21 R22 K30 ["LocalizedStrings"]
      110 GETIMPORT                        R22 K5 [require]
      112 GETTABLEKS                       R26 R0 K19 ["Src"]
      114 GETTABLEKS                       R25 R26 K31 ["Utility"]
      116 GETTABLEKS                       R24 R25 K32 ["Telemetry"]
      118 GETTABLEKS                       R23 R24 K33 ["TelemetryContext"]
      120 CALL                             R22 1 1
      121 NEWTABLE                         R23 0 0
      123 SETTABLEKS                       R23 R23 K34 ["__index"]
      125 DUPCLOSURE                       R24 K35 [PROTO_0]
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R21
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R22
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R23
      145 SETTABLEKS                       R24 R23 K36 ["new"]
      147 DUPCLOSURE                       R24 K37 [PROTO_1]
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R24 R23 K38 ["getItemsAsList"]
      151 DUPCLOSURE                       R24 K39 [PROTO_2]
      152 SETTABLEKS                       R24 R23 K40 ["destroy"]
      154 RETURN                           R23 1
