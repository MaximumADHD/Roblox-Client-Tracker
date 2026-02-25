PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SelectionChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 DUPTABLE                         R4 K4 [{"Layout"}]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K5 ["createElement"]
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
       65 GETUPVAL                         R15 0
       66 GETTABLEKS                       R14 R15 K5 ["createElement"]
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
      105 GETUPVAL                         R6 0
      106 GETTABLEKS                       R5 R6 K5 ["createElement"]
      108 LOADK                            R6 K32 ["Frame"]
      109 DUPTABLE                         R7 K36 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
      110 GETIMPORT                        R8 K38 [UDim2.new]
      112 LOADN                            R9 0
      113 GETUPVAL                         R11 4
      114 GETTABLEKS                       R10 R11 K39 ["MENU_BAR_WIDTH"]
      116 LOADN                            R11 1
      117 LOADN                            R12 0
      118 CALL                             R8 4 1
      119 SETTABLEKS                       R8 R7 K33 ["Size"]
      121 GETTABLEKS                       R9 R2 K40 ["menuBar"]
      123 GETTABLEKS                       R8 R9 K41 ["backgroundColor"]
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
        3 GETTABLEKS                       R4 R0 K3 ["Settings"]
        5 GETTABLEKS                       R3 R4 K0 ["Errors"]
        7 SETTABLEKS                       R3 R2 K0 ["Errors"]
        9 GETTABLEKS                       R4 R0 K3 ["Settings"]
       11 GETTABLEKS                       R3 R4 K1 ["Warnings"]
       13 SETTABLEKS                       R3 R2 K1 ["Warnings"]
       15 RETURN                           R2 1

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
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Util"]
       40 GETTABLEKS                       R7 R8 K13 ["DEPRECATED_Constants"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R10 R0 K11 ["Src"]
       47 GETTABLEKS                       R9 R10 K14 ["Components"]
       49 GETTABLEKS                       R8 R9 K15 ["MenuEntry"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       54 LOADK                            R10 K17 ["MenuBar"]
       55 NAMECALL                         R8 R8 K18 ["extend"]
       57 CALL                             R8 2 1
       58 GETIMPORT                        R9 K20 [game]
       60 LOADK                            R11 K21 ["RemoveGameSettingsPermissionsPage"]
       61 NAMECALL                         R9 R9 K22 ["GetFastFlag"]
       63 CALL                             R9 2 1
       64 LOADNIL                          R10
       65 NEWTABLE                         R11 4 0
       67 DUPTABLE                         R12 K26 [{"name", "description", "playableDevices"}]
       68 LOADB                            R13 1
       69 SETTABLEKS                       R13 R12 K23 ["name"]
       71 LOADB                            R13 1
       72 SETTABLEKS                       R13 R12 K24 ["description"]
       74 LOADB                            R13 1
       75 SETTABLEKS                       R13 R12 K25 ["playableDevices"]
       77 SETTABLEKS                       R12 R11 K27 ["BasicInfo"]
       79 DUPTABLE                         R12 K29 [{"universeAvatarAssetOverrides"}]
       80 LOADB                            R13 1
       81 SETTABLEKS                       R13 R12 K28 ["universeAvatarAssetOverrides"]
       83 SETTABLEKS                       R12 R11 K30 ["Avatar"]
       85 DUPTABLE                         R12 K34 [{"gravity", "walkSpeed", "maxSlopeAngle"}]
       86 LOADB                            R13 1
       87 SETTABLEKS                       R13 R12 K31 ["gravity"]
       89 LOADB                            R13 1
       90 SETTABLEKS                       R13 R12 K32 ["walkSpeed"]
       92 LOADB                            R13 1
       93 SETTABLEKS                       R13 R12 K33 ["maxSlopeAngle"]
       95 SETTABLEKS                       R12 R11 K35 ["World"]
       97 MOVE                             R10 R11
       98 NEWTABLE                         R11 2 0
      100 DUPTABLE                         R12 K37 [{"isActive"}]
      101 JUMPIFNOT                        R9 ; [+2]
      102 LOADB                            R13 0
      103 JUMP                             ; [+1]
      104 LOADB                            R13 1
      105 SETTABLEKS                       R13 R12 K36 ["isActive"]
      107 SETTABLEKS                       R12 R11 K38 ["Permissions"]
      109 DUPTABLE                         R12 K40 [{"universeAvatarType"}]
      110 LOADB                            R13 1
      111 SETTABLEKS                       R13 R12 K39 ["universeAvatarType"]
      113 SETTABLEKS                       R12 R11 K30 ["Avatar"]
      115 GETTABLEKS                       R12 R10 K27 ["BasicInfo"]
      117 LOADB                            R13 1
      118 SETTABLEKS                       R13 R12 K41 ["thumbnails"]
      120 GETTABLEKS                       R12 R10 K27 ["BasicInfo"]
      122 LOADB                            R13 1
      123 SETTABLEKS                       R13 R12 K42 ["gameIcon"]
      125 GETIMPORT                        R12 K44 [settings]
      127 CALL                             R12 0 1
      128 LOADK                            R14 K45 ["DeveloperSubscriptionsEnabled"]
      129 NAMECALL                         R12 R12 K46 ["GetFFlag"]
      131 CALL                             R12 2 1
      132 JUMPIFNOT                        R12 ; [+6]
      133 DUPTABLE                         R12 K48 [{"DeveloperSubscriptions"}]
      134 LOADB                            R13 1
      135 SETTABLEKS                       R13 R12 K47 ["DeveloperSubscriptions"]
      137 SETTABLEKS                       R12 R10 K49 ["Monetization"]
      139 NEWCLOSURE                       R12 P0
      140 CAPTURE                          VAL R1
      141 CAPTURE                          REF R10
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R6
      145 SETTABLEKS                       R12 R8 K50 ["render"]
      147 MOVE                             R12 R5
      148 DUPTABLE                         R13 K53 [{"Stylizer", "Localization"}]
      149 GETTABLEKS                       R14 R4 K51 ["Stylizer"]
      151 SETTABLEKS                       R14 R13 K51 ["Stylizer"]
      153 GETTABLEKS                       R14 R4 K52 ["Localization"]
      155 SETTABLEKS                       R14 R13 K52 ["Localization"]
      157 CALL                             R12 1 1
      158 MOVE                             R13 R8
      159 CALL                             R12 1 1
      160 MOVE                             R8 R12
      161 GETTABLEKS                       R12 R3 K54 ["connect"]
      163 DUPCLOSURE                       R13 K55 [PROTO_2]
      164 CALL                             R12 1 1
      165 MOVE                             R13 R8
      166 CALL                             R12 1 -1
      167 CLOSEUPVALS                      R10
      168 RETURN                           R12 -1
