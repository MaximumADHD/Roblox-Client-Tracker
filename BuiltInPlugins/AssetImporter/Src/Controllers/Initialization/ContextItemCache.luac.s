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
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K5 ["new"]
       23 DUPTABLE                         R6 K11 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       24 GETUPVAL                         R7 2
       25 SETTABLEKS                       R7 R6 K8 ["stringResourceTable"]
       27 GETUPVAL                         R7 3
       28 SETTABLEKS                       R7 R6 K9 ["translationResourceTable"]
       30 LOADK                            R7 K12 ["AssetImporter"]
       31 SETTABLEKS                       R7 R6 K10 ["pluginName"]
       33 CALL                             R5 1 1
       34 JUMP                             ; [+4]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K13 ["mock"]
       38 CALL                             R5 0 1
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K5 ["new"]
       42 MOVE                             R7 R3
       43 MOVE                             R8 R1
       44 MOVE                             R9 R5
       45 CALL                             R6 3 1
       46 GETUPVAL                         R7 5
       47 GETTABLEKS                       R7 R7 K5 ["new"]
       49 CALL                             R7 0 1
       50 GETUPVAL                         R8 6
       51 GETTABLEKS                       R8 R8 K5 ["new"]
       53 MOVE                             R9 R7
       54 CALL                             R8 1 1
       55 DUPTABLE                         R9 K26 [{"Plugin", "PluginLoaderContextItem", "Design", "Focus", "Localization", "Mouse", "Store", "Theme", "FileController", "UploadController", "PresetController", "Networking"}]
       56 GETUPVAL                         R10 7
       57 GETTABLEKS                       R10 R10 K14 ["Plugin"]
       59 GETTABLEKS                       R10 R10 K5 ["new"]
       61 MOVE                             R11 R3
       62 CALL                             R10 1 1
       63 SETTABLEKS                       R10 R9 K14 ["Plugin"]
       65 GETTABLEKS                       R10 R0 K27 ["loader"]
       67 SETTABLEKS                       R10 R9 K15 ["PluginLoaderContextItem"]
       69 JUMPIFNOT                        R2 ; [+6]
       70 GETUPVAL                         R10 8
       71 GETTABLEKS                       R10 R10 K5 ["new"]
       73 MOVE                             R11 R4
       74 CALL                             R10 1 1
       75 JUMP                             ; [+5]
       76 GETUPVAL                         R10 8
       77 GETTABLEKS                       R10 R10 K13 ["mock"]
       79 MOVE                             R11 R4
       80 CALL                             R10 1 1
       81 SETTABLEKS                       R10 R9 K16 ["Design"]
       83 GETUPVAL                         R10 9
       84 GETTABLEKS                       R10 R10 K5 ["new"]
       86 GETIMPORT                        R11 K6 [Instance.new]
       88 LOADK                            R12 K28 ["ScreenGui"]
       89 CALL                             R11 1 -1
       90 CALL                             R10 -1 1
       91 SETTABLEKS                       R10 R9 K17 ["Focus"]
       93 SETTABLEKS                       R5 R9 K18 ["Localization"]
       95 GETUPVAL                         R10 10
       96 GETTABLEKS                       R10 R10 K5 ["new"]
       98 NAMECALL                         R11 R3 K29 ["GetMouse"]
      100 CALL                             R11 1 -1
      101 CALL                             R10 -1 1
      102 SETTABLEKS                       R10 R9 K19 ["Mouse"]
      104 GETUPVAL                         R10 11
      105 GETTABLEKS                       R10 R10 K5 ["new"]
      107 MOVE                             R11 R1
      108 CALL                             R10 1 1
      109 SETTABLEKS                       R10 R9 K20 ["Store"]
      111 GETUPVAL                         R10 12
      112 NOT                              R11 R2
      113 CALL                             R10 1 1
      114 SETTABLEKS                       R10 R9 K21 ["Theme"]
      116 GETUPVAL                         R10 13
      117 GETTABLEKS                       R10 R10 K5 ["new"]
      119 MOVE                             R11 R1
      120 MOVE                             R12 R6
      121 MOVE                             R13 R8
      122 MOVE                             R14 R2
      123 CALL                             R10 4 1
      124 SETTABLEKS                       R10 R9 K22 ["FileController"]
      126 GETUPVAL                         R10 14
      127 GETTABLEKS                       R10 R10 K5 ["new"]
      129 MOVE                             R11 R1
      130 MOVE                             R12 R5
      131 MOVE                             R13 R8
      132 MOVE                             R14 R6
      133 CALL                             R10 4 1
      134 SETTABLEKS                       R10 R9 K23 ["UploadController"]
      136 SETTABLEKS                       R6 R9 K24 ["PresetController"]
      138 GETUPVAL                         R10 15
      139 GETTABLEKS                       R10 R10 K5 ["new"]
      141 MOVE                             R11 R1
      142 NOT                              R12 R2
      143 CALL                             R10 2 1
      144 SETTABLEKS                       R10 R9 K25 ["Networking"]
      146 GETUPVAL                         R10 16
      147 GETTABLEKS                       R10 R10 K5 ["new"]
      149 MOVE                             R11 R1
      150 MOVE                             R12 R6
      151 CALL                             R10 2 1
      152 SETTABLEKS                       R10 R9 K30 ["QueueController"]
      154 GETUPVAL                         R12 17
      155 FASTCALL2                        SETMETATABLE R9 R12 ; [+4]
      157 MOVE                             R11 R9
      158 GETIMPORT                        R10 K32 [setmetatable]
      160 CALL                             R10 2 1
      161 RETURN                           R10 1

PROTO_1:
        0 NEWTABLE                         R1 0 13
        2 GETTABLEKS                       R2 R0 K0 ["Plugin"]
        4 GETTABLEKS                       R3 R0 K1 ["PluginLoaderContextItem"]
        6 GETTABLEKS                       R4 R0 K2 ["Design"]
        8 GETTABLEKS                       R5 R0 K3 ["Localization"]
       10 GETTABLEKS                       R6 R0 K4 ["Mouse"]
       12 GETTABLEKS                       R7 R0 K5 ["Focus"]
       14 GETTABLEKS                       R8 R0 K6 ["Store"]
       16 GETTABLEKS                       R9 R0 K7 ["Theme"]
       18 GETTABLEKS                       R10 R0 K8 ["FileController"]
       20 GETTABLEKS                       R11 R0 K9 ["PresetController"]
       22 GETTABLEKS                       R12 R0 K10 ["QueueController"]
       24 GETTABLEKS                       R13 R0 K11 ["UploadController"]
       26 GETTABLEKS                       R14 R0 K12 ["Networking"]
       28 SETLIST                          R1 R2 13 [1]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K13 ["values"]
       33 MOVE                             R3 R1
       34 CALL                             R2 1 -1
       35 RETURN                           R2 -1

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
       24 GETTABLEKS                       R1 R0 K4 ["FileController"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R1 R0 K4 ["FileController"]
       29 NAMECALL                         R1 R1 K1 ["destroy"]
       31 CALL                             R1 1 0
       32 GETTABLEKS                       R1 R0 K5 ["PresetController"]
       34 JUMPIFNOT                        R1 ; [+5]
       35 GETTABLEKS                       R1 R0 K5 ["PresetController"]
       37 NAMECALL                         R1 R1 K1 ["destroy"]
       39 CALL                             R1 1 0
       40 GETTABLEKS                       R1 R0 K6 ["QueueController"]
       42 JUMPIFNOT                        R1 ; [+5]
       43 GETTABLEKS                       R1 R0 K6 ["QueueController"]
       45 NAMECALL                         R1 R1 K1 ["destroy"]
       47 CALL                             R1 1 0
       48 GETTABLEKS                       R1 R0 K7 ["UploadController"]
       50 JUMPIFNOT                        R1 ; [+5]
       51 GETTABLEKS                       R1 R0 K7 ["UploadController"]
       53 NAMECALL                         R1 R1 K1 ["destroy"]
       55 CALL                             R1 1 0
       56 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["PluginLoader"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["TelemetryProtocol"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Design"]
       39 GETTABLEKS                       R7 R5 K13 ["Localization"]
       41 GETTABLEKS                       R8 R5 K14 ["Store"]
       43 GETTABLEKS                       R9 R5 K15 ["Focus"]
       45 GETTABLEKS                       R10 R5 K16 ["Mouse"]
       47 GETTABLEKS                       R11 R2 K17 ["Styling"]
       49 GETTABLEKS                       R11 R11 K18 ["registerPluginStyles"]
       51 GETTABLEKS                       R12 R0 K19 ["Src"]
       53 GETTABLEKS                       R12 R12 K20 ["Controllers"]
       55 GETIMPORT                        R13 K5 [require]
       57 GETTABLEKS                       R14 R12 K21 ["PresetController"]
       59 CALL                             R13 1 1
       60 GETIMPORT                        R14 K5 [require]
       62 GETTABLEKS                       R15 R12 K22 ["FileController"]
       64 CALL                             R14 1 1
       65 GETIMPORT                        R15 K5 [require]
       67 GETTABLEKS                       R16 R12 K23 ["QueueController"]
       69 CALL                             R15 1 1
       70 GETIMPORT                        R16 K5 [require]
       72 GETTABLEKS                       R17 R12 K24 ["UploadController"]
       74 CALL                             R16 1 1
       75 GETIMPORT                        R17 K5 [require]
       77 GETTABLEKS                       R18 R12 K25 ["Networking"]
       79 CALL                             R17 1 1
       80 GETIMPORT                        R18 K5 [require]
       82 GETTABLEKS                       R19 R0 K19 ["Src"]
       84 GETTABLEKS                       R19 R19 K26 ["Resources"]
       86 GETTABLEKS                       R19 R19 K27 ["MakeTheme"]
       88 CALL                             R18 1 1
       89 GETTABLEKS                       R19 R0 K19 ["Src"]
       91 GETTABLEKS                       R19 R19 K26 ["Resources"]
       93 GETTABLEKS                       R19 R19 K13 ["Localization"]
       95 GETTABLEKS                       R19 R19 K28 ["SourceStrings"]
       97 GETTABLEKS                       R20 R0 K19 ["Src"]
       99 GETTABLEKS                       R20 R20 K26 ["Resources"]
      101 GETTABLEKS                       R20 R20 K13 ["Localization"]
      103 GETTABLEKS                       R20 R20 K29 ["LocalizedStrings"]
      105 GETIMPORT                        R21 K5 [require]
      107 GETTABLEKS                       R22 R0 K19 ["Src"]
      109 GETTABLEKS                       R22 R22 K30 ["Utility"]
      111 GETTABLEKS                       R22 R22 K31 ["Telemetry"]
      113 GETTABLEKS                       R22 R22 K32 ["TelemetryContext"]
      115 CALL                             R21 1 1
      116 NEWTABLE                         R22 0 0
      118 SETTABLEKS                       R22 R22 K33 ["__index"]
      120 DUPCLOSURE                       R23 K34 [PROTO_0]
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R19
      124 CAPTURE                          VAL R20
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R21
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R22
      139 SETTABLEKS                       R23 R22 K35 ["new"]
      141 DUPCLOSURE                       R23 K36 [PROTO_1]
      142 CAPTURE                          VAL R1
      143 SETTABLEKS                       R23 R22 K37 ["getItemsAsList"]
      145 DUPCLOSURE                       R23 K38 [PROTO_2]
      146 SETTABLEKS                       R23 R22 K39 ["destroy"]
      148 RETURN                           R22 1
