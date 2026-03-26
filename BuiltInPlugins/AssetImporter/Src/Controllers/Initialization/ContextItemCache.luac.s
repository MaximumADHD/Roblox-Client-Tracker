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
       46 DUPTABLE                         R7 K27 [{"Plugin", "PluginLoaderContextItem", "Design", "Focus", "Localization", "Mouse", "Store", "Theme", "CalloutController", "FileController", "UploadController", "PresetController", "Networking"}]
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R9 R10 K14 ["Plugin"]
       50 GETTABLEKS                       R8 R9 K5 ["new"]
       52 MOVE                             R9 R3
       53 CALL                             R8 1 1
       54 SETTABLEKS                       R8 R7 K14 ["Plugin"]
       56 GETTABLEKS                       R8 R0 K28 ["loader"]
       58 SETTABLEKS                       R8 R7 K15 ["PluginLoaderContextItem"]
       60 JUMPIFNOT                        R2 ; [+6]
       61 GETUPVAL                         R9 6
       62 GETTABLEKS                       R8 R9 K5 ["new"]
       64 MOVE                             R9 R4
       65 CALL                             R8 1 1
       66 JUMP                             ; [+5]
       67 GETUPVAL                         R9 6
       68 GETTABLEKS                       R8 R9 K13 ["mock"]
       70 MOVE                             R9 R4
       71 CALL                             R8 1 1
       72 SETTABLEKS                       R8 R7 K16 ["Design"]
       74 GETUPVAL                         R9 7
       75 GETTABLEKS                       R8 R9 K5 ["new"]
       77 GETIMPORT                        R9 K6 [Instance.new]
       79 LOADK                            R10 K29 ["ScreenGui"]
       80 CALL                             R9 1 -1
       81 CALL                             R8 -1 1
       82 SETTABLEKS                       R8 R7 K17 ["Focus"]
       84 SETTABLEKS                       R5 R7 K18 ["Localization"]
       86 GETUPVAL                         R9 8
       87 GETTABLEKS                       R8 R9 K5 ["new"]
       89 NAMECALL                         R9 R3 K30 ["GetMouse"]
       91 CALL                             R9 1 -1
       92 CALL                             R8 -1 1
       93 SETTABLEKS                       R8 R7 K19 ["Mouse"]
       95 GETUPVAL                         R9 9
       96 GETTABLEKS                       R8 R9 K5 ["new"]
       98 MOVE                             R9 R1
       99 CALL                             R8 1 1
      100 SETTABLEKS                       R8 R7 K20 ["Store"]
      102 GETUPVAL                         R8 10
      103 NOT                              R9 R2
      104 CALL                             R8 1 1
      105 SETTABLEKS                       R8 R7 K21 ["Theme"]
      107 JUMPIFNOT                        R2 ; [+5]
      108 GETUPVAL                         R9 11
      109 GETTABLEKS                       R8 R9 K5 ["new"]
      111 CALL                             R8 0 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R8
      114 SETTABLEKS                       R8 R7 K22 ["CalloutController"]
      116 GETUPVAL                         R9 12
      117 GETTABLEKS                       R8 R9 K5 ["new"]
      119 MOVE                             R9 R1
      120 MOVE                             R10 R6
      121 MOVE                             R11 R2
      122 CALL                             R8 3 1
      123 SETTABLEKS                       R8 R7 K23 ["FileController"]
      125 GETUPVAL                         R9 13
      126 GETTABLEKS                       R8 R9 K5 ["new"]
      128 MOVE                             R9 R1
      129 MOVE                             R10 R5
      130 CALL                             R8 2 1
      131 SETTABLEKS                       R8 R7 K24 ["UploadController"]
      133 SETTABLEKS                       R6 R7 K25 ["PresetController"]
      135 GETUPVAL                         R9 14
      136 GETTABLEKS                       R8 R9 K5 ["new"]
      138 MOVE                             R9 R1
      139 NOT                              R10 R2
      140 CALL                             R8 2 1
      141 SETTABLEKS                       R8 R7 K26 ["Networking"]
      143 GETUPVAL                         R9 15
      144 GETTABLEKS                       R8 R9 K5 ["new"]
      146 MOVE                             R9 R1
      147 MOVE                             R10 R6
      148 CALL                             R8 2 1
      149 SETTABLEKS                       R8 R7 K31 ["QueueController"]
      151 GETUPVAL                         R10 16
      152 FASTCALL2                        SETMETATABLE R7 R10 ; [+4]
      154 MOVE                             R9 R7
      155 GETIMPORT                        R8 K33 [setmetatable]
      157 CALL                             R8 2 1
      158 RETURN                           R8 1

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
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Design"]
       32 GETTABLEKS                       R6 R4 K12 ["Localization"]
       34 GETTABLEKS                       R7 R4 K13 ["Store"]
       36 GETTABLEKS                       R8 R4 K14 ["Focus"]
       38 GETTABLEKS                       R9 R4 K15 ["Mouse"]
       40 GETTABLEKS                       R11 R2 K16 ["Styling"]
       42 GETTABLEKS                       R10 R11 K17 ["registerPluginStyles"]
       44 GETTABLEKS                       R12 R0 K18 ["Src"]
       46 GETTABLEKS                       R11 R12 K19 ["Controllers"]
       48 GETIMPORT                        R12 K5 [require]
       50 GETTABLEKS                       R13 R11 K20 ["CalloutController"]
       52 CALL                             R12 1 1
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R14 R11 K21 ["PresetController"]
       57 CALL                             R13 1 1
       58 GETIMPORT                        R14 K5 [require]
       60 GETTABLEKS                       R15 R11 K22 ["FileController"]
       62 CALL                             R14 1 1
       63 GETIMPORT                        R15 K5 [require]
       65 GETTABLEKS                       R16 R11 K23 ["QueueController"]
       67 CALL                             R15 1 1
       68 GETIMPORT                        R16 K5 [require]
       70 GETTABLEKS                       R17 R11 K24 ["UploadController"]
       72 CALL                             R16 1 1
       73 GETIMPORT                        R17 K5 [require]
       75 GETTABLEKS                       R18 R11 K25 ["Networking"]
       77 CALL                             R17 1 1
       78 GETIMPORT                        R18 K5 [require]
       80 GETTABLEKS                       R21 R0 K18 ["Src"]
       82 GETTABLEKS                       R20 R21 K26 ["Resources"]
       84 GETTABLEKS                       R19 R20 K27 ["MakeTheme"]
       86 CALL                             R18 1 1
       87 GETTABLEKS                       R22 R0 K18 ["Src"]
       89 GETTABLEKS                       R21 R22 K26 ["Resources"]
       91 GETTABLEKS                       R20 R21 K12 ["Localization"]
       93 GETTABLEKS                       R19 R20 K28 ["SourceStrings"]
       95 GETTABLEKS                       R23 R0 K18 ["Src"]
       97 GETTABLEKS                       R22 R23 K26 ["Resources"]
       99 GETTABLEKS                       R21 R22 K12 ["Localization"]
      101 GETTABLEKS                       R20 R21 K29 ["LocalizedStrings"]
      103 NEWTABLE                         R21 0 0
      105 SETTABLEKS                       R21 R21 K30 ["__index"]
      107 DUPCLOSURE                       R22 K31 [PROTO_0]
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R19
      111 CAPTURE                          VAL R20
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R18
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R21
      125 SETTABLEKS                       R22 R21 K32 ["new"]
      127 DUPCLOSURE                       R22 K33 [PROTO_1]
      128 CAPTURE                          VAL R1
      129 SETTABLEKS                       R22 R21 K34 ["getItemsAsList"]
      131 DUPCLOSURE                       R22 K35 [PROTO_2]
      132 SETTABLEKS                       R22 R21 K36 ["destroy"]
      134 RETURN                           R21 1
