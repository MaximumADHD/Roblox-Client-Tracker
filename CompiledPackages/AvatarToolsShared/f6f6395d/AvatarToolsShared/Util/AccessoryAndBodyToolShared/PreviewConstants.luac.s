PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isFullyCagedCharacter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isFullyCagedClothing"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R3 K0 ["AnimationClip"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R2 K1 [script]
       13 GETTABLEKS                       R2 R2 K2 ["Parent"]
       15 GETTABLEKS                       R2 R2 K5 ["ItemCharacteristics"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETIMPORT                        R3 K1 [script]
       22 GETTABLEKS                       R3 R3 K2 ["Parent"]
       24 GETTABLEKS                       R3 R3 K6 ["Constants"]
       26 CALL                             R2 1 1
       27 DUPTABLE                         R3 K15 [{["Avatars"] = "TAB_KEY_Avatars", ["Clothing"] = "TAB_KEY_Clothing", ["Animations"] = "TAB_KEY_Animations", ["None"] = "TAB_KEY_None"}]
       28 NEWTABLE                         R4 4 0
       30 GETTABLEKS                       R5 R3 K7 ["Avatars"]
       32 DUPTABLE                         R6 K28 [{["BundleIds"], ["CanAddNew"] = True, ["PanelBlockerLocalizationKey"] = "PanelBlockerAddAvatar", ["InvalidAddLocalizationKey"] = "AvatarInvalidAdd", ["IsSelectedInstanceValid"], ["IsMultiSelect"] = True, ["LayoutOrder"] = 1, ["LocalizationKey"]}]
       33 NEWTABLE                         R7 0 7
       35 LOADN                            R8 109
       36 LOADN                            R9 511
       37 LOADN                            R10 800
       38 LOADN                            R11 429
       39 LOADN                            R12 982
       40 LOADN                            R13 986
       41 LOADN                            R14 988
       42 SETLIST                          R7 R8 7 [1]
       44 SETTABLEKS                       R7 R6 K16 ["BundleIds"]
       46 DUPCLOSURE                       R7 K29 [PROTO_0]
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R7 R6 K23 ["IsSelectedInstanceValid"]
       50 GETTABLEKS                       R7 R2 K30 ["LOCALIZATION_KEYS"]
       52 GETTABLEKS                       R7 R7 K7 ["Avatars"]
       54 SETTABLEKS                       R7 R6 K27 ["LocalizationKey"]
       56 SETTABLE                         R6 R4 R5
       57 GETTABLEKS                       R5 R3 K9 ["Clothing"]
       59 DUPTABLE                         R6 K35 [{["AssetIds"], ["CanAddNew"] = True, ["PanelBlockerLocalizationKey"] = "PanelBlockerAddClothing", ["InvalidAddLocalizationKey"] = "ClothingInvalidAdd", ["IsSelectedInstanceValid"], ["IsMultiSelect"] = True, ["LayoutOrder"] = 2, ["LocalizationKey"]}]
       60 NEWTABLE                         R7 0 20
       62 LOADK                            R8 K36 [7178735702]
       63 LOADK                            R9 K37 [7178744611]
       64 LOADK                            R10 K38 [7178740556]
       65 LOADK                            R11 K39 [6984769289]
       66 LOADK                            R12 K40 [7192543873]
       67 LOADK                            R13 K41 [7192532009]
       68 LOADK                            R14 K42 [6984765766]
       69 LOADK                            R15 K43 [7192690731]
       70 LOADK                            R16 K44 [7192695838]
       71 LOADK                            R17 K45 [6984740059]
       72 LOADK                            R18 K46 [7192668209]
       73 LOADK                            R19 K47 [7192683061]
       74 LOADK                            R20 K48 [7192686536]
       75 LOADK                            R21 K49 [7192843096]
       76 LOADK                            R22 K50 [7192846003]
       77 LOADK                            R23 K51 [7193168012]
       78 SETLIST                          R7 R8 16 [1]
       80 LOADK                            R8 K52 [7193169059]
       81 LOADK                            R9 K53 [7193442167]
       82 LOADK                            R10 K54 [7193450455]
       83 LOADK                            R11 K55 [7193397693]
       84 SETLIST                          R7 R8 4 [17]
       86 SETTABLEKS                       R7 R6 K31 ["AssetIds"]
       88 DUPCLOSURE                       R7 K56 [PROTO_1]
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R7 R6 K23 ["IsSelectedInstanceValid"]
       92 GETTABLEKS                       R7 R2 K30 ["LOCALIZATION_KEYS"]
       94 GETTABLEKS                       R7 R7 K9 ["Clothing"]
       96 SETTABLEKS                       R7 R6 K27 ["LocalizationKey"]
       98 SETTABLE                         R6 R4 R5
       99 GETTABLEKS                       R5 R3 K11 ["Animations"]
      101 DUPTABLE                         R6 K61 [{["AssetIds"], ["CanAddNew"] = True, ["PanelBlockerLocalizationKey"] = "PanelBlockerAddAnimation", ["InvalidAddLocalizationKey"] = "AnimationInvalidAdd", ["IsSelectedInstanceValid"], ["IsMultiSelect"] = False, ["LayoutOrder"] = 3, ["LocalizationKey"]}]
      102 NEWTABLE                         R7 0 9
      104 LOADK                            R8 K62 [11581814132]
      105 LOADK                            R9 K63 [2510235063]
      106 LOADK                            R10 K64 [2510242378]
      107 LOADK                            R11 K65 [2510238627]
      108 LOADK                            R12 K66 [4849499887]
      109 LOADK                            R13 K67 [3823158750]
      110 LOADK                            R14 K68 [3716636630]
      111 LOADK                            R15 K69 [3576717965]
      112 LOADK                            R16 K70 [4689362868]
      113 SETLIST                          R7 R8 9 [1]
      115 SETTABLEKS                       R7 R6 K31 ["AssetIds"]
      117 DUPCLOSURE                       R7 K71 [PROTO_2]
      118 SETTABLEKS                       R7 R6 K23 ["IsSelectedInstanceValid"]
      120 GETTABLEKS                       R7 R2 K30 ["LOCALIZATION_KEYS"]
      122 GETTABLEKS                       R7 R7 K11 ["Animations"]
      124 SETTABLEKS                       R7 R6 K27 ["LocalizationKey"]
      126 SETTABLE                         R6 R4 R5
      127 NEWTABLE                         R5 16 0
      129 LOADK                            R6 K62 [11581814132]
      130 LOADK                            R7 K72 [11581512087]
      131 SETTABLE                         R7 R5 R6
      132 LOADK                            R6 K63 [2510235063]
      133 LOADK                            R7 K73 [10921258489]
      134 SETTABLE                         R7 R5 R6
      135 LOADK                            R6 K64 [2510242378]
      136 LOADK                            R7 K74 [10921269718]
      137 SETTABLE                         R7 R5 R6
      138 LOADK                            R6 K65 [2510238627]
      139 LOADK                            R7 K75 [10921261968]
      140 SETTABLE                         R7 R5 R6
      141 LOADK                            R6 K66 [4849499887]
      142 LOADK                            R7 K76 [4841405708]
      143 SETTABLE                         R7 R5 R6
      144 LOADK                            R6 K67 [3823158750]
      145 LOADK                            R7 K77 [3337994105]
      146 SETTABLE                         R7 R5 R6
      147 LOADK                            R6 K68 [3716636630]
      148 LOADK                            R7 K78 [3333499508]
      149 SETTABLE                         R7 R5 R6
      150 LOADK                            R6 K69 [3576717965]
      151 LOADK                            R7 K79 [3337978742]
      152 SETTABLE                         R7 R5 R6
      153 LOADK                            R6 K70 [4689362868]
      154 LOADK                            R7 K80 [4686925579]
      155 SETTABLE                         R7 R5 R6
      156 DUPTABLE                         R6 K83 [{["Default"] = "Default", ["Custom"] = "Custom"}]
      157 NEWTABLE                         R7 8 0
      159 SETTABLEKS                       R4 R7 K84 ["TABS_INFO"]
      161 SETTABLEKS                       R3 R7 K85 ["TABS_KEYS"]
      163 SETTABLEKS                       R5 R7 K86 ["AnimationIdToSequenceId"]
      165 LOADK                            R8 K87 ["PreviewAvatar"]
      166 SETTABLEKS                       R8 R7 K88 ["PreviewAvatarName"]
      168 SETTABLEKS                       R6 R7 K89 ["CategoryPrefixes"]
      170 RETURN                           R7 1
