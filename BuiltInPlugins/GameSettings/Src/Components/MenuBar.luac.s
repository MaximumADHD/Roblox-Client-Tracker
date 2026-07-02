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
      109 DUPTABLE                         R7 K37 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      110 GETIMPORT                        R8 K39 [UDim2.new]
      112 LOADN                            R9 0
      113 GETUPVAL                         R10 4
      114 GETTABLEKS                       R10 R10 K40 ["MENU_BAR_WIDTH"]
      116 LOADN                            R11 1
      117 LOADN                            R12 0
      118 CALL                             R8 4 1
      119 SETTABLEKS                       R8 R7 K33 ["Size"]
      121 GETTABLEKS                       R8 R2 K41 ["menuBar"]
      123 GETTABLEKS                       R8 R8 K42 ["backgroundColor"]
      125 SETTABLEKS                       R8 R7 K34 ["BackgroundColor3"]
      127 MOVE                             R8 R4
      128 CALL                             R5 3 -1
      129 RETURN                           R5 -1

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
       73 DUPTABLE                         R13 K28 [{["name"] = True, ["description"] = True, ["playableDevices"] = True}]
       74 SETTABLEKS                       R13 R12 K29 ["BasicInfo"]
       76 JUMPIFNOT                        R10 ; [+2]
       77 LOADNIL                          R13
       78 JUMP                             ; [+1]
       79 DUPTABLE                         R13 K31 [{["universeAvatarAssetOverrides"] = True}]
       80 SETTABLEKS                       R13 R12 K32 ["Avatar"]
       82 DUPTABLE                         R13 K36 [{["gravity"] = True, ["walkSpeed"] = True, ["maxSlopeAngle"] = True}]
       83 SETTABLEKS                       R13 R12 K37 ["World"]
       85 MOVE                             R11 R12
       86 NEWTABLE                         R12 1 0
       88 JUMPIFNOT                        R10 ; [+2]
       89 LOADNIL                          R13
       90 JUMP                             ; [+1]
       91 DUPTABLE                         R13 K39 [{["universeAvatarType"] = True}]
       92 SETTABLEKS                       R13 R12 K32 ["Avatar"]
       94 GETTABLEKS                       R13 R11 K29 ["BasicInfo"]
       96 LOADB                            R14 1
       97 SETTABLEKS                       R14 R13 K40 ["thumbnails"]
       99 GETTABLEKS                       R13 R11 K29 ["BasicInfo"]
      101 LOADB                            R14 1
      102 SETTABLEKS                       R14 R13 K41 ["gameIcon"]
      104 JUMPIF                           R9 ; [+11]
      105 GETIMPORT                        R13 K43 [settings]
      107 CALL                             R13 0 1
      108 LOADK                            R15 K44 ["DeveloperSubscriptionsEnabled"]
      109 NAMECALL                         R13 R13 K45 ["GetFFlag"]
      111 CALL                             R13 2 1
      112 JUMPIFNOT                        R13 ; [+3]
      113 DUPTABLE                         R13 K47 [{["DeveloperSubscriptions"] = True}]
      114 SETTABLEKS                       R13 R11 K48 ["Monetization"]
      116 NEWCLOSURE                       R13 P0
      117 CAPTURE                          VAL R1
      118 CAPTURE                          REF R11
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R6
      122 SETTABLEKS                       R13 R8 K49 ["render"]
      124 MOVE                             R13 R5
      125 DUPTABLE                         R14 K52 [{"Stylizer", "Localization"}]
      126 GETTABLEKS                       R15 R4 K50 ["Stylizer"]
      128 SETTABLEKS                       R15 R14 K50 ["Stylizer"]
      130 GETTABLEKS                       R15 R4 K51 ["Localization"]
      132 SETTABLEKS                       R15 R14 K51 ["Localization"]
      134 CALL                             R13 1 1
      135 MOVE                             R14 R8
      136 CALL                             R13 1 1
      137 MOVE                             R8 R13
      138 GETTABLEKS                       R13 R3 K53 ["connect"]
      140 DUPCLOSURE                       R14 K54 [PROTO_2]
      141 CALL                             R13 1 1
      142 MOVE                             R14 R8
      143 CALL                             R13 1 -1
      144 CLOSEUPVALS                      R11
      145 RETURN                           R13 -1
