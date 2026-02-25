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
       46 DUPTABLE                         R7 K28 [{"Plugin", "PluginLoaderContextItem", "Analytics", "Design", "Focus", "Localization", "Mouse", "Store", "Theme", "CalloutController", "FileController", "UploadController", "PresetController", "Networking"}]
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R9 R10 K14 ["Plugin"]
       50 GETTABLEKS                       R8 R9 K5 ["new"]
       52 MOVE                             R9 R3
       53 CALL                             R8 1 1
       54 SETTABLEKS                       R8 R7 K14 ["Plugin"]
       56 GETTABLEKS                       R8 R0 K29 ["loader"]
       58 SETTABLEKS                       R8 R7 K15 ["PluginLoaderContextItem"]
       60 JUMPIFNOT                        R2 ; [+6]
       61 GETUPVAL                         R9 6
       62 GETTABLEKS                       R8 R9 K5 ["new"]
       64 GETUPVAL                         R9 7
       65 CALL                             R8 1 1
       66 JUMP                             ; [+4]
       67 GETUPVAL                         R9 6
       68 GETTABLEKS                       R8 R9 K13 ["mock"]
       70 CALL                             R8 0 1
       71 SETTABLEKS                       R8 R7 K16 ["Analytics"]
       73 JUMPIFNOT                        R2 ; [+6]
       74 GETUPVAL                         R9 8
       75 GETTABLEKS                       R8 R9 K5 ["new"]
       77 MOVE                             R9 R4
       78 CALL                             R8 1 1
       79 JUMP                             ; [+5]
       80 GETUPVAL                         R9 8
       81 GETTABLEKS                       R8 R9 K13 ["mock"]
       83 MOVE                             R9 R4
       84 CALL                             R8 1 1
       85 SETTABLEKS                       R8 R7 K17 ["Design"]
       87 GETUPVAL                         R9 9
       88 GETTABLEKS                       R8 R9 K5 ["new"]
       90 GETIMPORT                        R9 K6 [Instance.new]
       92 LOADK                            R10 K30 ["ScreenGui"]
       93 CALL                             R9 1 -1
       94 CALL                             R8 -1 1
       95 SETTABLEKS                       R8 R7 K18 ["Focus"]
       97 SETTABLEKS                       R5 R7 K19 ["Localization"]
       99 GETUPVAL                         R9 10
      100 GETTABLEKS                       R8 R9 K5 ["new"]
      102 NAMECALL                         R9 R3 K31 ["GetMouse"]
      104 CALL                             R9 1 -1
      105 CALL                             R8 -1 1
      106 SETTABLEKS                       R8 R7 K20 ["Mouse"]
      108 GETUPVAL                         R9 11
      109 GETTABLEKS                       R8 R9 K5 ["new"]
      111 MOVE                             R9 R1
      112 CALL                             R8 1 1
      113 SETTABLEKS                       R8 R7 K21 ["Store"]
      115 GETUPVAL                         R8 12
      116 NOT                              R9 R2
      117 CALL                             R8 1 1
      118 SETTABLEKS                       R8 R7 K22 ["Theme"]
      120 JUMPIFNOT                        R2 ; [+5]
      121 GETUPVAL                         R9 13
      122 GETTABLEKS                       R8 R9 K5 ["new"]
      124 CALL                             R8 0 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R8
      127 SETTABLEKS                       R8 R7 K23 ["CalloutController"]
      129 GETUPVAL                         R9 14
      130 GETTABLEKS                       R8 R9 K5 ["new"]
      132 MOVE                             R9 R1
      133 MOVE                             R10 R6
      134 MOVE                             R11 R2
      135 CALL                             R8 3 1
      136 SETTABLEKS                       R8 R7 K24 ["FileController"]
      138 GETUPVAL                         R9 15
      139 GETTABLEKS                       R8 R9 K5 ["new"]
      141 MOVE                             R9 R1
      142 MOVE                             R10 R5
      143 CALL                             R8 2 1
      144 SETTABLEKS                       R8 R7 K25 ["UploadController"]
      146 SETTABLEKS                       R6 R7 K26 ["PresetController"]
      148 GETUPVAL                         R9 16
      149 GETTABLEKS                       R8 R9 K5 ["new"]
      151 MOVE                             R9 R1
      152 NOT                              R10 R2
      153 CALL                             R8 2 1
      154 SETTABLEKS                       R8 R7 K27 ["Networking"]
      156 JUMPIFNOT                        R2 ; [+6]
      157 GETUPVAL                         R9 17
      158 GETTABLEKS                       R8 R9 K5 ["new"]
      160 MOVE                             R9 R1
      161 CALL                             R8 1 1
      162 JUMP                             ; [+5]
      163 GETUPVAL                         R9 17
      164 GETTABLEKS                       R8 R9 K13 ["mock"]
      166 MOVE                             R9 R1
      167 CALL                             R8 1 1
      168 SETTABLEKS                       R8 R7 K32 ["QueueController"]
      170 GETUPVAL                         R10 18
      171 FASTCALL2                        SETMETATABLE R7 R10 ; [+4]
      173 MOVE                             R9 R7
      174 GETIMPORT                        R8 K34 [setmetatable]
      176 CALL                             R8 2 1
      177 RETURN                           R8 1

PROTO_1:
        0 NEWTABLE                         R1 0 15
        2 GETTABLEKS                       R2 R0 K0 ["Plugin"]
        4 GETTABLEKS                       R3 R0 K1 ["PluginLoaderContextItem"]
        6 GETTABLEKS                       R4 R0 K2 ["Analytics"]
        8 GETTABLEKS                       R5 R0 K3 ["Design"]
       10 GETTABLEKS                       R6 R0 K4 ["Localization"]
       12 GETTABLEKS                       R7 R0 K5 ["Mouse"]
       14 GETTABLEKS                       R8 R0 K6 ["Focus"]
       16 GETTABLEKS                       R9 R0 K7 ["Store"]
       18 GETTABLEKS                       R10 R0 K8 ["Theme"]
       20 GETTABLEKS                       R11 R0 K9 ["CalloutController"]
       22 GETTABLEKS                       R12 R0 K10 ["FileController"]
       24 GETTABLEKS                       R13 R0 K11 ["PresetController"]
       26 GETTABLEKS                       R14 R0 K12 ["QueueController"]
       28 GETTABLEKS                       R15 R0 K13 ["UploadController"]
       30 GETTABLEKS                       R16 R0 K14 ["Networking"]
       32 SETLIST                          R1 R2 15 [1]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K15 ["values"]
       37 MOVE                             R3 R1
       38 CALL                             R2 1 -1
       39 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Analytics"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["Analytics"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["Design"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["Design"]
       13 NAMECALL                         R1 R1 K1 ["destroy"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K3 ["Localization"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K3 ["Localization"]
       21 NAMECALL                         R1 R1 K1 ["destroy"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K4 ["Store"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R1 R0 K4 ["Store"]
       29 NAMECALL                         R1 R1 K1 ["destroy"]
       31 CALL                             R1 1 0
       32 GETTABLEKS                       R1 R0 K5 ["CalloutController"]
       34 JUMPIFNOT                        R1 ; [+5]
       35 GETTABLEKS                       R1 R0 K5 ["CalloutController"]
       37 NAMECALL                         R1 R1 K1 ["destroy"]
       39 CALL                             R1 1 0
       40 GETTABLEKS                       R1 R0 K6 ["FileController"]
       42 JUMPIFNOT                        R1 ; [+5]
       43 GETTABLEKS                       R1 R0 K6 ["FileController"]
       45 NAMECALL                         R1 R1 K1 ["destroy"]
       47 CALL                             R1 1 0
       48 GETTABLEKS                       R1 R0 K7 ["PresetController"]
       50 JUMPIFNOT                        R1 ; [+5]
       51 GETTABLEKS                       R1 R0 K7 ["PresetController"]
       53 NAMECALL                         R1 R1 K1 ["destroy"]
       55 CALL                             R1 1 0
       56 GETTABLEKS                       R1 R0 K8 ["QueueController"]
       58 JUMPIFNOT                        R1 ; [+5]
       59 GETTABLEKS                       R1 R0 K8 ["QueueController"]
       61 NAMECALL                         R1 R1 K1 ["destroy"]
       63 CALL                             R1 1 0
       64 GETTABLEKS                       R1 R0 K9 ["UploadController"]
       66 JUMPIFNOT                        R1 ; [+5]
       67 GETTABLEKS                       R1 R0 K9 ["UploadController"]
       69 NAMECALL                         R1 R1 K1 ["destroy"]
       71 CALL                             R1 1 0
       72 RETURN                           R0 0

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
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Analytics"]
       32 GETTABLEKS                       R6 R4 K12 ["Design"]
       34 GETTABLEKS                       R7 R4 K13 ["Localization"]
       36 GETTABLEKS                       R8 R4 K14 ["Store"]
       38 GETTABLEKS                       R9 R4 K15 ["Focus"]
       40 GETTABLEKS                       R10 R4 K16 ["Mouse"]
       42 GETTABLEKS                       R12 R2 K17 ["Styling"]
       44 GETTABLEKS                       R11 R12 K18 ["registerPluginStyles"]
       46 GETTABLEKS                       R13 R0 K19 ["Src"]
       48 GETTABLEKS                       R12 R13 K20 ["Controllers"]
       50 GETIMPORT                        R13 K5 [require]
       52 GETTABLEKS                       R14 R12 K21 ["CalloutController"]
       54 CALL                             R13 1 1
       55 GETIMPORT                        R14 K5 [require]
       57 GETTABLEKS                       R15 R12 K22 ["PresetController"]
       59 CALL                             R14 1 1
       60 GETIMPORT                        R15 K5 [require]
       62 GETTABLEKS                       R16 R12 K23 ["FileController"]
       64 CALL                             R15 1 1
       65 GETIMPORT                        R16 K5 [require]
       67 GETTABLEKS                       R17 R12 K24 ["QueueController"]
       69 CALL                             R16 1 1
       70 GETIMPORT                        R17 K5 [require]
       72 GETTABLEKS                       R18 R12 K25 ["UploadController"]
       74 CALL                             R17 1 1
       75 GETIMPORT                        R18 K5 [require]
       77 GETTABLEKS                       R19 R12 K26 ["Networking"]
       79 CALL                             R18 1 1
       80 GETIMPORT                        R19 K5 [require]
       82 GETTABLEKS                       R22 R0 K19 ["Src"]
       84 GETTABLEKS                       R21 R22 K27 ["Resources"]
       86 GETTABLEKS                       R20 R21 K28 ["createAnalyticsHandlers"]
       88 CALL                             R19 1 1
       89 GETIMPORT                        R20 K5 [require]
       91 GETTABLEKS                       R23 R0 K19 ["Src"]
       93 GETTABLEKS                       R22 R23 K27 ["Resources"]
       95 GETTABLEKS                       R21 R22 K29 ["MakeTheme"]
       97 CALL                             R20 1 1
       98 GETTABLEKS                       R24 R0 K19 ["Src"]
      100 GETTABLEKS                       R23 R24 K27 ["Resources"]
      102 GETTABLEKS                       R22 R23 K13 ["Localization"]
      104 GETTABLEKS                       R21 R22 K30 ["SourceStrings"]
      106 GETTABLEKS                       R25 R0 K19 ["Src"]
      108 GETTABLEKS                       R24 R25 K27 ["Resources"]
      110 GETTABLEKS                       R23 R24 K13 ["Localization"]
      112 GETTABLEKS                       R22 R23 K31 ["LocalizedStrings"]
      114 NEWTABLE                         R23 0 0
      116 SETTABLEKS                       R23 R23 K32 ["__index"]
      118 DUPCLOSURE                       R24 K33 [PROTO_0]
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R21
      122 CAPTURE                          VAL R22
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R20
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R23
      138 SETTABLEKS                       R24 R23 K34 ["new"]
      140 DUPCLOSURE                       R24 K35 [PROTO_1]
      141 CAPTURE                          VAL R1
      142 SETTABLEKS                       R24 R23 K36 ["getItemsAsList"]
      144 DUPCLOSURE                       R24 K37 [PROTO_2]
      145 SETTABLEKS                       R24 R23 K38 ["destroy"]
      147 RETURN                           R23 1
