PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SelectionChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 DUPTABLE                         R4 K4 [{"Layout"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K5 ["createElement"]
       10 LOADK                            R6 K6 ["UIListLayout"]
       11 DUPTABLE                         R7 K8 [{"Padding"}]
       12 GETIMPORT                        R8 K11 [UDim.new]
       14 LOADN                            R9 0
       15 LOADN                            R10 1
       16 CALL                             R8 2 1
       17 SETTABLEKS                       R8 R7 K7 ["Padding"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K3 ["Layout"]
       22 GETIMPORT                        R5 K13 [ipairs]
       24 GETTABLEKS                       R6 R1 K14 ["Entries"]
       26 CALL                             R5 1 3
       27 FORGPREP_INEXT                   R5
       28 LOADB                            R10 0
       29 GETUPVAL                         R12 1
       30 GETTABLE                         R11 R12 R9
       31 JUMPIFNOT                        R11 ; [+14]
       32 GETIMPORT                        R11 K16 [pairs]
       34 GETTABLEKS                       R12 R1 K17 ["Errors"]
       36 CALL                             R11 1 3
       37 FORGPREP_NEXT                    R11
       38 GETUPVAL                         R18 1
       39 GETTABLE                         R17 R18 R9
       40 GETTABLE                         R16 R17 R14
       41 JUMPIFNOT                        R16 ; [+2]
       42 LOADB                            R10 1
       43 JUMP                             ; [+2]
       44 FORGLOOP                         R11 1 ; [-7]
       46 LOADB                            R11 0
       47 GETUPVAL                         R13 2
       48 GETTABLE                         R12 R13 R9
       49 JUMPIFNOT                        R12 ; [+14]
       50 GETIMPORT                        R12 K13 [ipairs]
       52 GETTABLEKS                       R13 R1 K18 ["Warnings"]
       54 CALL                             R12 1 3
       55 FORGPREP_INEXT                   R12
       56 GETUPVAL                         R19 2
       57 GETTABLE                         R18 R19 R9
       58 GETTABLE                         R17 R18 R16
       59 JUMPIFNOT                        R17 ; [+2]
       60 LOADB                            R11 1
       61 JUMP                             ; [+2]
       62 FORGLOOP                         R12 2 [inext] ; [-7]
       64 MOVE                             R13 R4
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R14 R14 K5 ["createElement"]
       68 GETUPVAL                         R15 3
       69 DUPTABLE                         R16 K25 [{"Title", "Selected", "Index", "Error", "Warning", "OnClicked"}]
       70 LOADK                            R19 K26 ["General"]
       71 LOADK                            R21 K27 ["Category"]
       72 MOVE                             R22 R9
       73 CONCAT                           R20 R21 R22
       74 NAMECALL                         R17 R3 K28 ["getText"]
       76 CALL                             R17 3 1
       77 SETTABLEKS                       R17 R16 K19 ["Title"]
       79 GETTABLEKS                       R18 R1 K20 ["Selected"]
       81 JUMPIFEQ                         R18 R8 ; [+2]
       83 LOADB                            R17 0 +1
       84 LOADB                            R17 1
       85 SETTABLEKS                       R17 R16 K20 ["Selected"]
       87 SETTABLEKS                       R8 R16 K21 ["Index"]
       89 SETTABLEKS                       R10 R16 K22 ["Error"]
       91 SETTABLEKS                       R11 R16 K23 ["Warning"]
       93 NEWCLOSURE                       R17 P0
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R8
       96 SETTABLEKS                       R17 R16 K24 ["OnClicked"]
       98 CALL                             R14 2 -1
       99 FASTCALL                         TABLE_INSERT ; [+2]
      100 GETIMPORT                        R12 K31 [table.insert]
      102 CALL                             R12 -1 0
      103 FORGLOOP                         R5 2 [inext] ; [-76]
      105 GETUPVAL                         R5 0
      106 GETTABLEKS                       R5 R5 K5 ["createElement"]
      108 LOADK                            R6 K32 ["Frame"]
      109 DUPTABLE                         R7 K36 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
      110 GETIMPORT                        R8 K38 [UDim2.new]
      112 LOADN                            R9 0
      113 GETUPVAL                         R10 4
      114 GETTABLEKS                       R10 R10 K39 ["MENU_BAR_WIDTH"]
      116 LOADN                            R11 1
      117 LOADN                            R12 0
      118 CALL                             R8 4 1
      119 SETTABLEKS                       R8 R7 K33 ["Size"]
      121 GETTABLEKS                       R8 R2 K40 ["menuBar"]
      123 GETTABLEKS                       R8 R8 K41 ["backgroundColor"]
      125 SETTABLEKS                       R8 R7 K34 ["BackgroundColor3"]
      127 LOADN                            R8 0
      128 SETTABLEKS                       R8 R7 K35 ["BorderSizePixel"]
      130 MOVE                             R8 R4
      131 CALL                             R5 3 -1
      132 RETURN                           R5 -1

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 DUPTABLE                         R2 K2 [{"Errors", "Warnings"}]
        3 GETTABLEKS                       R3 R0 K3 ["Settings"]
        5 GETTABLEKS                       R3 R3 K0 ["Errors"]
        7 SETTABLEKS                       R3 R2 K0 ["Errors"]
        9 GETTABLEKS                       R3 R0 K3 ["Settings"]
       11 GETTABLEKS                       R3 R3 K1 ["Warnings"]
       13 SETTABLEKS                       R3 R2 K1 ["Warnings"]
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K12 ["Util"]
       40 GETTABLEKS                       R7 R7 K13 ["DEPRECATED_Constants"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R0 K11 ["Src"]
       47 GETTABLEKS                       R8 R8 K14 ["Components"]
       49 GETTABLEKS                       R8 R8 K15 ["MenuEntry"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       54 LOADK                            R10 K17 ["MenuBar"]
       55 NAMECALL                         R8 R8 K18 ["extend"]
       57 CALL                             R8 2 1
       58 GETIMPORT                        R9 K20 [game]
       60 LOADK                            R11 K21 ["RemoveGameSettingsMonetizationPage"]
       61 NAMECALL                         R9 R9 K22 ["GetFastFlag"]
       63 CALL                             R9 2 1
       64 GETIMPORT                        R10 K20 [game]
       66 LOADK                            R12 K23 ["RemoveGameSettingsAvatarPage"]
       67 NAMECALL                         R10 R10 K22 ["GetFastFlag"]
       69 CALL                             R10 2 1
       70 LOADNIL                          R11
       71 NEWTABLE                         R12 4 0
       73 DUPTABLE                         R13 K27 [{"name", "description", "playableDevices"}]
       74 LOADB                            R14 1
       75 SETTABLEKS                       R14 R13 K24 ["name"]
       77 LOADB                            R14 1
       78 SETTABLEKS                       R14 R13 K25 ["description"]
       80 LOADB                            R14 1
       81 SETTABLEKS                       R14 R13 K26 ["playableDevices"]
       83 SETTABLEKS                       R13 R12 K28 ["BasicInfo"]
       85 JUMPIFNOT                        R10 ; [+2]
       86 LOADNIL                          R13
       87 JUMP                             ; [+4]
       88 DUPTABLE                         R13 K30 [{"universeAvatarAssetOverrides"}]
       89 LOADB                            R14 1
       90 SETTABLEKS                       R14 R13 K29 ["universeAvatarAssetOverrides"]
       92 SETTABLEKS                       R13 R12 K31 ["Avatar"]
       94 DUPTABLE                         R13 K35 [{"gravity", "walkSpeed", "maxSlopeAngle"}]
       95 LOADB                            R14 1
       96 SETTABLEKS                       R14 R13 K32 ["gravity"]
       98 LOADB                            R14 1
       99 SETTABLEKS                       R14 R13 K33 ["walkSpeed"]
      101 LOADB                            R14 1
      102 SETTABLEKS                       R14 R13 K34 ["maxSlopeAngle"]
      104 SETTABLEKS                       R13 R12 K36 ["World"]
      106 MOVE                             R11 R12
      107 NEWTABLE                         R12 1 0
      109 JUMPIFNOT                        R10 ; [+2]
      110 LOADNIL                          R13
      111 JUMP                             ; [+4]
      112 DUPTABLE                         R13 K38 [{"universeAvatarType"}]
      113 LOADB                            R14 1
      114 SETTABLEKS                       R14 R13 K37 ["universeAvatarType"]
      116 SETTABLEKS                       R13 R12 K31 ["Avatar"]
      118 GETTABLEKS                       R13 R11 K28 ["BasicInfo"]
      120 LOADB                            R14 1
      121 SETTABLEKS                       R14 R13 K39 ["thumbnails"]
      123 GETTABLEKS                       R13 R11 K28 ["BasicInfo"]
      125 LOADB                            R14 1
      126 SETTABLEKS                       R14 R13 K40 ["gameIcon"]
      128 JUMPIF                           R9 ; [+14]
      129 GETIMPORT                        R13 K42 [settings]
      131 CALL                             R13 0 1
      132 LOADK                            R15 K43 ["DeveloperSubscriptionsEnabled"]
      133 NAMECALL                         R13 R13 K44 ["GetFFlag"]
      135 CALL                             R13 2 1
      136 JUMPIFNOT                        R13 ; [+6]
      137 DUPTABLE                         R13 K46 [{"DeveloperSubscriptions"}]
      138 LOADB                            R14 1
      139 SETTABLEKS                       R14 R13 K45 ["DeveloperSubscriptions"]
      141 SETTABLEKS                       R13 R11 K47 ["Monetization"]
      143 NEWCLOSURE                       R13 P0
      144 CAPTURE                          VAL R1
      145 CAPTURE                          REF R11
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R6
      149 SETTABLEKS                       R13 R8 K48 ["render"]
      151 MOVE                             R13 R5
      152 DUPTABLE                         R14 K51 [{"Stylizer", "Localization"}]
      153 GETTABLEKS                       R15 R4 K49 ["Stylizer"]
      155 SETTABLEKS                       R15 R14 K49 ["Stylizer"]
      157 GETTABLEKS                       R15 R4 K50 ["Localization"]
      159 SETTABLEKS                       R15 R14 K50 ["Localization"]
      161 CALL                             R13 1 1
      162 MOVE                             R14 R8
      163 CALL                             R13 1 1
      164 MOVE                             R8 R13
      165 GETTABLEKS                       R13 R3 K52 ["connect"]
      167 DUPCLOSURE                       R14 K53 [PROTO_2]
      168 CALL                             R13 1 1
      169 MOVE                             R14 R8
      170 CALL                             R13 1 -1
      171 CLOSEUPVALS                      R11
      172 RETURN                           R13 -1
