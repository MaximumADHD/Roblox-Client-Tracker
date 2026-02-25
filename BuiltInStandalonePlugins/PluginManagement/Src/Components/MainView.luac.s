PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["pluginId"]
        4 NEWTABLE                         R4 0 1
        6 MOVE                             R5 R3
        7 SETLIST                          R4 R5 1 [1]
        9 DUPTABLE                         R5 K3 [{"SimpleLabel"}]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K4 ["createElement"]
       13 LOADK                            R7 K5 ["TextLabel"]
       14 DUPTABLE                         R8 K15 [{"Text", "Size", "Position", "BackgroundTransparency", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       15 LOADK                            R11 K16 ["Main"]
       16 LOADK                            R12 K17 ["InstallingPlugin"]
       17 MOVE                             R13 R4
       18 NAMECALL                         R9 R2 K18 ["getText"]
       20 CALL                             R9 4 1
       21 SETTABLEKS                       R9 R8 K6 ["Text"]
       23 GETIMPORT                        R9 K21 [UDim2.new]
       25 LOADN                            R10 1
       26 LOADN                            R11 0
       27 LOADN                            R12 1
       28 LOADN                            R13 0
       29 CALL                             R9 4 1
       30 SETTABLEKS                       R9 R8 K7 ["Size"]
       32 GETIMPORT                        R9 K21 [UDim2.new]
       34 LOADN                            R10 0
       35 LOADN                            R11 0
       36 LOADN                            R12 0
       37 LOADN                            R13 0
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K8 ["Position"]
       41 LOADN                            R9 1
       42 SETTABLEKS                       R9 R8 K9 ["BackgroundTransparency"]
       44 GETTABLEKS                       R9 R1 K22 ["TextColor"]
       46 SETTABLEKS                       R9 R8 K10 ["TextColor3"]
       48 LOADN                            R9 18
       49 SETTABLEKS                       R9 R8 K11 ["TextSize"]
       51 LOADB                            R9 1
       52 SETTABLEKS                       R9 R8 K12 ["TextWrapped"]
       54 GETIMPORT                        R9 K25 [Enum.TextXAlignment.Center]
       56 SETTABLEKS                       R9 R8 K13 ["TextXAlignment"]
       58 GETIMPORT                        R9 K26 [Enum.TextYAlignment.Center]
       60 SETTABLEKS                       R9 R8 K14 ["TextYAlignment"]
       62 CALL                             R6 2 1
       63 SETTABLEKS                       R6 R5 K2 ["SimpleLabel"]
       65 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["info"]
        4 GETTABLEKS                       R5 R3 K3 ["name"]
        6 ORK                              R4 R5 K2 [""]
        7 NEWTABLE                         R5 0 1
        9 LOADK                            R7 K4 ["\""]
       10 MOVE                             R8 R4
       11 LOADK                            R9 K4 ["\""]
       12 CONCAT                           R6 R7 R9
       13 SETLIST                          R5 R6 1 [1]
       15 DUPTABLE                         R6 K9 [{"ListLayout", "Title", "Padding", "Message"}]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K10 ["createElement"]
       19 LOADK                            R8 K11 ["UIListLayout"]
       20 DUPTABLE                         R9 K13 [{"SortOrder"}]
       21 GETIMPORT                        R10 K16 [Enum.SortOrder.LayoutOrder]
       23 SETTABLEKS                       R10 R9 K12 ["SortOrder"]
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K5 ["ListLayout"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K10 ["createElement"]
       31 LOADK                            R8 K17 ["TextLabel"]
       32 DUPTABLE                         R9 K26 [{"Text", "TextColor3", "TextSize", "Font", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "Size", "LayoutOrder"}]
       33 LOADK                            R12 K27 ["Progress"]
       34 LOADK                            R13 K28 ["Completed"]
       35 NAMECALL                         R10 R2 K29 ["getText"]
       37 CALL                             R10 3 1
       38 SETTABLEKS                       R10 R9 K18 ["Text"]
       40 GETTABLEKS                       R10 R1 K30 ["TextColor"]
       42 SETTABLEKS                       R10 R9 K19 ["TextColor3"]
       44 LOADN                            R10 16
       45 SETTABLEKS                       R10 R9 K20 ["TextSize"]
       47 GETIMPORT                        R10 K32 [Enum.Font.SourceSansSemibold]
       49 SETTABLEKS                       R10 R9 K21 ["Font"]
       51 LOADN                            R10 1
       52 SETTABLEKS                       R10 R9 K22 ["BackgroundTransparency"]
       54 LOADB                            R10 1
       55 SETTABLEKS                       R10 R9 K23 ["TextWrapped"]
       57 GETIMPORT                        R10 K34 [Enum.TextXAlignment.Left]
       59 SETTABLEKS                       R10 R9 K24 ["TextXAlignment"]
       61 GETIMPORT                        R10 K37 [UDim2.new]
       63 LOADN                            R11 1
       64 LOADN                            R12 0
       65 LOADN                            R13 0
       66 LOADN                            R14 18
       67 CALL                             R10 4 1
       68 SETTABLEKS                       R10 R9 K25 ["Size"]
       70 LOADN                            R10 1
       71 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K6 ["Title"]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R7 R8 K10 ["createElement"]
       79 LOADK                            R8 K38 ["Frame"]
       80 DUPTABLE                         R9 K39 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
       81 LOADN                            R10 1
       82 SETTABLEKS                       R10 R9 K22 ["BackgroundTransparency"]
       84 GETIMPORT                        R10 K37 [UDim2.new]
       86 LOADN                            R11 1
       87 LOADN                            R12 0
       88 LOADN                            R13 0
       89 LOADN                            R14 24
       90 CALL                             R10 4 1
       91 SETTABLEKS                       R10 R9 K25 ["Size"]
       93 LOADN                            R10 2
       94 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R6 K7 ["Padding"]
       99 GETUPVAL                         R8 0
      100 GETTABLEKS                       R7 R8 K10 ["createElement"]
      102 LOADK                            R8 K17 ["TextLabel"]
      103 DUPTABLE                         R9 K40 [{"Text", "TextColor3", "TextSize", "Font", "TextWrapped", "TextXAlignment", "Size", "BackgroundTransparency", "LayoutOrder"}]
      104 LOADK                            R12 K27 ["Progress"]
      105 LOADK                            R13 K41 ["CompletedMessage"]
      106 MOVE                             R14 R5
      107 NAMECALL                         R10 R2 K29 ["getText"]
      109 CALL                             R10 4 1
      110 SETTABLEKS                       R10 R9 K18 ["Text"]
      112 GETTABLEKS                       R10 R1 K30 ["TextColor"]
      114 SETTABLEKS                       R10 R9 K19 ["TextColor3"]
      116 LOADN                            R10 16
      117 SETTABLEKS                       R10 R9 K20 ["TextSize"]
      119 GETIMPORT                        R10 K43 [Enum.Font.SourceSans]
      121 SETTABLEKS                       R10 R9 K21 ["Font"]
      123 LOADB                            R10 1
      124 SETTABLEKS                       R10 R9 K23 ["TextWrapped"]
      126 GETIMPORT                        R10 K34 [Enum.TextXAlignment.Left]
      128 SETTABLEKS                       R10 R9 K24 ["TextXAlignment"]
      130 GETIMPORT                        R10 K37 [UDim2.new]
      132 LOADN                            R11 1
      133 LOADN                            R12 0
      134 LOADN                            R13 0
      135 LOADN                            R14 48
      136 CALL                             R10 4 1
      137 SETTABLEKS                       R10 R9 K25 ["Size"]
      139 LOADN                            R10 1
      140 SETTABLEKS                       R10 R9 K22 ["BackgroundTransparency"]
      142 LOADN                            R10 3
      143 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
      145 CALL                             R7 2 1
      146 SETTABLEKS                       R7 R6 K8 ["Message"]
      148 RETURN                           R6 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["pluginId"]
        4 GETTABLEKS                       R5 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R5 K2 ["info"]
        8 GETTABLEKS                       R5 R4 K3 ["installStatus"]
       10 GETTABLEKS                       R6 R4 K4 ["installationMsg"]
       12 LOADNIL                          R7
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R8 R9 K5 ["UNKNOWN"]
       16 JUMPIFNOTEQ                      R5 R8 ; [+13]
       18 LOADK                            R10 K6 ["Main"]
       19 LOADK                            R11 K7 ["InstallingPlugin"]
       20 NEWTABLE                         R12 0 1
       22 MOVE                             R13 R3
       23 SETLIST                          R12 R13 1 [1]
       25 NAMECALL                         R8 R2 K8 ["getText"]
       27 CALL                             R8 4 1
       28 MOVE                             R7 R8
       29 JUMP                             ; [+84]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R8 R9 K9 ["HTTP_ERROR"]
       33 JUMPIFNOTEQ                      R5 R8 ; [+13]
       35 LOADK                            R10 K10 ["Progress"]
       36 LOADK                            R11 K11 ["HttpError"]
       37 NEWTABLE                         R12 0 1
       39 MOVE                             R13 R6
       40 SETLIST                          R12 R13 1 [1]
       42 NAMECALL                         R8 R2 K8 ["getText"]
       44 CALL                             R8 4 1
       45 MOVE                             R7 R8
       46 JUMP                             ; [+67]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R8 R9 K12 ["PLUGIN_NOT_OWNED"]
       50 JUMPIFNOTEQ                      R5 R8 ; [+13]
       52 LOADK                            R10 K10 ["Progress"]
       53 LOADK                            R11 K13 ["NotOwned"]
       54 NEWTABLE                         R12 0 1
       56 MOVE                             R13 R6
       57 SETLIST                          R12 R13 1 [1]
       59 NAMECALL                         R8 R2 K8 ["getText"]
       61 CALL                             R8 4 1
       62 MOVE                             R7 R8
       63 JUMP                             ; [+50]
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R8 R9 K14 ["PLUGIN_DETAILS_UNAVAILABLE"]
       67 JUMPIFNOTEQ                      R5 R8 ; [+13]
       69 LOADK                            R10 K10 ["Progress"]
       70 LOADK                            R11 K15 ["Unavailable"]
       71 NEWTABLE                         R12 0 1
       73 MOVE                             R13 R6
       74 SETLIST                          R12 R13 1 [1]
       76 NAMECALL                         R8 R2 K8 ["getText"]
       78 CALL                             R8 4 1
       79 MOVE                             R7 R8
       80 JUMP                             ; [+33]
       81 GETUPVAL                         R9 0
       82 GETTABLEKS                       R8 R9 K16 ["PLUGIN_NOT_INSTALLED"]
       84 JUMPIFNOTEQ                      R5 R8 ; [+13]
       86 LOADK                            R10 K10 ["Progress"]
       87 LOADK                            R11 K17 ["NotInstalled"]
       88 NEWTABLE                         R12 0 1
       90 MOVE                             R13 R6
       91 SETLIST                          R12 R13 1 [1]
       93 NAMECALL                         R8 R2 K8 ["getText"]
       95 CALL                             R8 4 1
       96 MOVE                             R7 R8
       97 JUMP                             ; [+16]
       98 GETUPVAL                         R9 0
       99 GETTABLEKS                       R8 R9 K18 ["PLUGIN_AlREADY_INSTALLED"]
      101 JUMPIFNOTEQ                      R5 R8 ; [+12]
      103 LOADK                            R10 K10 ["Progress"]
      104 LOADK                            R11 K19 ["AlreadyInstalled"]
      105 NEWTABLE                         R12 0 1
      107 MOVE                             R13 R6
      108 SETLIST                          R12 R13 1 [1]
      110 NAMECALL                         R8 R2 K8 ["getText"]
      112 CALL                             R8 4 1
      113 MOVE                             R7 R8
      114 DUPTABLE                         R8 K21 [{"SimpleLabel"}]
      115 GETUPVAL                         R10 1
      116 GETTABLEKS                       R9 R10 K22 ["createElement"]
      118 LOADK                            R10 K23 ["TextLabel"]
      119 DUPTABLE                         R11 K33 [{"Text", "Size", "Position", "BackgroundTransparency", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      120 SETTABLEKS                       R7 R11 K24 ["Text"]
      122 GETIMPORT                        R12 K36 [UDim2.new]
      124 LOADN                            R13 1
      125 LOADN                            R14 0
      126 LOADN                            R15 1
      127 LOADN                            R16 0
      128 CALL                             R12 4 1
      129 SETTABLEKS                       R12 R11 K25 ["Size"]
      131 GETIMPORT                        R12 K36 [UDim2.new]
      133 LOADN                            R13 0
      134 LOADN                            R14 0
      135 LOADN                            R15 0
      136 LOADN                            R16 0
      137 CALL                             R12 4 1
      138 SETTABLEKS                       R12 R11 K26 ["Position"]
      140 LOADN                            R12 1
      141 SETTABLEKS                       R12 R11 K27 ["BackgroundTransparency"]
      143 GETTABLEKS                       R12 R1 K37 ["TextColor"]
      145 SETTABLEKS                       R12 R11 K28 ["TextColor3"]
      147 LOADN                            R12 18
      148 SETTABLEKS                       R12 R11 K29 ["TextSize"]
      150 LOADB                            R12 1
      151 SETTABLEKS                       R12 R11 K30 ["TextWrapped"]
      153 GETIMPORT                        R12 K40 [Enum.TextXAlignment.Center]
      155 SETTABLEKS                       R12 R11 K31 ["TextXAlignment"]
      157 GETIMPORT                        R12 K41 [Enum.TextYAlignment.Center]
      159 SETTABLEKS                       R12 R11 K32 ["TextYAlignment"]
      161 CALL                             R9 2 1
      162 SETTABLEKS                       R9 R8 K20 ["SimpleLabel"]
      164 RETURN                           R8 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["info"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["Localization"]
       12 LOADNIL                          R4
       13 JUMPIF                           R1 ; [+7]
       14 MOVE                             R7 R2
       15 MOVE                             R8 R3
       16 NAMECALL                         R5 R0 K4 ["renderContentNotReady"]
       18 CALL                             R5 3 1
       19 MOVE                             R4 R5
       20 JUMP                             ; [+20]
       21 GETTABLEKS                       R5 R1 K5 ["installStatus"]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K6 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
       26 JUMPIFNOTEQ                      R5 R6 ; [+8]
       28 MOVE                             R7 R2
       29 MOVE                             R8 R3
       30 NAMECALL                         R5 R0 K7 ["renderInstallSuccess"]
       32 CALL                             R5 3 1
       33 MOVE                             R4 R5
       34 JUMP                             ; [+6]
       35 MOVE                             R7 R2
       36 MOVE                             R8 R3
       37 NAMECALL                         R5 R0 K8 ["renderInstallProgress"]
       39 CALL                             R5 3 1
       40 MOVE                             R4 R5
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R5 R6 K9 ["createElement"]
       44 LOADK                            R6 K10 ["Frame"]
       45 DUPTABLE                         R7 K14 [{"Size", "Position", "BackgroundTransparency"}]
       46 GETIMPORT                        R8 K17 [UDim2.new]
       48 LOADN                            R9 1
       49 LOADN                            R10 0
       50 LOADN                            R11 1
       51 LOADN                            R12 0
       52 CALL                             R8 4 1
       53 SETTABLEKS                       R8 R7 K11 ["Size"]
       55 GETIMPORT                        R8 K17 [UDim2.new]
       57 LOADN                            R9 0
       58 LOADN                            R10 0
       59 LOADN                            R11 0
       60 LOADN                            R12 0
       61 CALL                             R8 4 1
       62 SETTABLEKS                       R8 R7 K12 ["Position"]
       64 LOADN                            R8 1
       65 SETTABLEKS                       R8 R7 K13 ["BackgroundTransparency"]
       67 MOVE                             R8 R4
       68 CALL                             R5 3 -1
       69 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["pluginId"]
        2 DUPTABLE                         R3 K2 [{"info"}]
        3 GETTABLEKS                       R6 R0 K3 ["PluginInfo"]
        5 GETTABLEKS                       R5 R6 K4 ["plugins"]
        7 GETTABLE                         R4 R5 R2
        8 SETTABLEKS                       R4 R3 K1 ["info"]
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R6 R0 K5 ["Packages"]
       27 GETTABLEKS                       R5 R6 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R3 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R4 R3 K10 ["withContext"]
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R8 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R8 K12 ["Constants"]
       40 GETTABLEKS                       R6 R7 K13 ["PluginInstalledStatus"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R1 K14 ["Component"]
       45 LOADK                            R8 K15 ["MainView"]
       46 NAMECALL                         R6 R6 K16 ["extend"]
       48 CALL                             R6 2 1
       49 DUPCLOSURE                       R7 K17 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R7 R6 K18 ["renderContentNotReady"]
       53 DUPCLOSURE                       R7 K19 [PROTO_1]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R7 R6 K20 ["renderInstallSuccess"]
       57 DUPCLOSURE                       R7 K21 [PROTO_2]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R7 R6 K22 ["renderInstallProgress"]
       62 DUPCLOSURE                       R7 K23 [PROTO_3]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R7 R6 K24 ["render"]
       67 MOVE                             R7 R4
       68 DUPTABLE                         R8 K27 [{"Localization", "Stylizer"}]
       69 GETTABLEKS                       R9 R3 K25 ["Localization"]
       71 SETTABLEKS                       R9 R8 K25 ["Localization"]
       73 GETTABLEKS                       R9 R3 K26 ["Stylizer"]
       75 SETTABLEKS                       R9 R8 K26 ["Stylizer"]
       77 CALL                             R7 1 1
       78 MOVE                             R8 R6
       79 CALL                             R7 1 1
       80 MOVE                             R6 R7
       81 GETTABLEKS                       R7 R2 K28 ["connect"]
       83 DUPCLOSURE                       R8 K29 [PROTO_4]
       84 CALL                             R7 1 1
       85 MOVE                             R8 R6
       86 CALL                             R7 1 -1
       87 RETURN                           R7 -1
