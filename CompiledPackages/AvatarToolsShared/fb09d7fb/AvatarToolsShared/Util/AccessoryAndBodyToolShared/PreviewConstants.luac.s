PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isFullyCagedCharacter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isFullyCagedClothing"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R4 K1 [script]
       13 GETTABLEKS                       R3 R4 K2 ["Parent"]
       15 GETTABLEKS                       R2 R3 K5 ["ItemCharacteristics"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETIMPORT                        R5 K1 [script]
       22 GETTABLEKS                       R4 R5 K2 ["Parent"]
       24 GETTABLEKS                       R3 R4 K6 ["Constants"]
       26 CALL                             R2 1 1
       27 DUPTABLE                         R3 K11 [{"Avatars", "Clothing", "Animations", "None"}]
       28 LOADK                            R4 K12 ["TAB_KEY_Avatars"]
       29 SETTABLEKS                       R4 R3 K7 ["Avatars"]
       31 LOADK                            R4 K13 ["TAB_KEY_Clothing"]
       32 SETTABLEKS                       R4 R3 K8 ["Clothing"]
       34 LOADK                            R4 K14 ["TAB_KEY_Animations"]
       35 SETTABLEKS                       R4 R3 K9 ["Animations"]
       37 LOADK                            R4 K15 ["TAB_KEY_None"]
       38 SETTABLEKS                       R4 R3 K10 ["None"]
       40 NEWTABLE                         R4 4 0
       42 GETTABLEKS                       R5 R3 K7 ["Avatars"]
       44 DUPTABLE                         R6 K24 [{"BundleIds", "CanAddNew", "PanelBlockerLocalizationKey", "InvalidAddLocalizationKey", "IsSelectedInstanceValid", "IsMultiSelect", "LayoutOrder", "LocalizationKey"}]
       45 NEWTABLE                         R7 0 7
       47 LOADN                            R8 109
       48 LOADN                            R9 255
       49 LOADN                            R10 32
       50 LOADN                            R11 173
       51 LOADN                            R12 214
       52 LOADN                            R13 218
       53 LOADN                            R14 220
       54 SETLIST                          R7 R8 7 [1]
       56 SETTABLEKS                       R7 R6 K16 ["BundleIds"]
       58 LOADB                            R7 1
       59 SETTABLEKS                       R7 R6 K17 ["CanAddNew"]
       61 LOADK                            R7 K25 ["PanelBlockerAddAvatar"]
       62 SETTABLEKS                       R7 R6 K18 ["PanelBlockerLocalizationKey"]
       64 LOADK                            R7 K26 ["AvatarInvalidAdd"]
       65 SETTABLEKS                       R7 R6 K19 ["InvalidAddLocalizationKey"]
       67 DUPCLOSURE                       R7 K27 [PROTO_0]
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R7 R6 K20 ["IsSelectedInstanceValid"]
       71 LOADB                            R7 1
       72 SETTABLEKS                       R7 R6 K21 ["IsMultiSelect"]
       74 LOADN                            R7 1
       75 SETTABLEKS                       R7 R6 K22 ["LayoutOrder"]
       77 GETTABLEKS                       R8 R2 K28 ["LOCALIZATION_KEYS"]
       79 GETTABLEKS                       R7 R8 K7 ["Avatars"]
       81 SETTABLEKS                       R7 R6 K23 ["LocalizationKey"]
       83 SETTABLE                         R6 R4 R5
       84 GETTABLEKS                       R5 R3 K8 ["Clothing"]
       86 DUPTABLE                         R6 K30 [{"AssetIds", "CanAddNew", "PanelBlockerLocalizationKey", "InvalidAddLocalizationKey", "IsSelectedInstanceValid", "IsMultiSelect", "LayoutOrder", "LocalizationKey"}]
       87 NEWTABLE                         R7 0 20
       89 LOADK                            R8 K31 [7178735702]
       90 LOADK                            R9 K32 [7178744611]
       91 LOADK                            R10 K33 [7178740556]
       92 LOADK                            R11 K34 [6984769289]
       93 LOADK                            R12 K35 [7192543873]
       94 LOADK                            R13 K36 [7192532009]
       95 LOADK                            R14 K37 [6984765766]
       96 LOADK                            R15 K38 [7192690731]
       97 LOADK                            R16 K39 [7192695838]
       98 LOADK                            R17 K40 [6984740059]
       99 LOADK                            R18 K41 [7192668209]
      100 LOADK                            R19 K42 [7192683061]
      101 LOADK                            R20 K43 [7192686536]
      102 LOADK                            R21 K44 [7192843096]
      103 LOADK                            R22 K45 [7192846003]
      104 LOADK                            R23 K46 [7193168012]
      105 SETLIST                          R7 R8 16 [1]
      107 LOADK                            R8 K47 [7193169059]
      108 LOADK                            R9 K48 [7193442167]
      109 LOADK                            R10 K49 [7193450455]
      110 LOADK                            R11 K50 [7193397693]
      111 SETLIST                          R7 R8 4 [17]
      113 SETTABLEKS                       R7 R6 K29 ["AssetIds"]
      115 LOADB                            R7 1
      116 SETTABLEKS                       R7 R6 K17 ["CanAddNew"]
      118 LOADK                            R7 K51 ["PanelBlockerAddClothing"]
      119 SETTABLEKS                       R7 R6 K18 ["PanelBlockerLocalizationKey"]
      121 LOADK                            R7 K52 ["ClothingInvalidAdd"]
      122 SETTABLEKS                       R7 R6 K19 ["InvalidAddLocalizationKey"]
      124 DUPCLOSURE                       R7 K53 [PROTO_1]
      125 CAPTURE                          VAL R1
      126 SETTABLEKS                       R7 R6 K20 ["IsSelectedInstanceValid"]
      128 LOADB                            R7 1
      129 SETTABLEKS                       R7 R6 K21 ["IsMultiSelect"]
      131 LOADN                            R7 2
      132 SETTABLEKS                       R7 R6 K22 ["LayoutOrder"]
      134 GETTABLEKS                       R8 R2 K28 ["LOCALIZATION_KEYS"]
      136 GETTABLEKS                       R7 R8 K8 ["Clothing"]
      138 SETTABLEKS                       R7 R6 K23 ["LocalizationKey"]
      140 SETTABLE                         R6 R4 R5
      141 GETTABLEKS                       R5 R3 K9 ["Animations"]
      143 DUPTABLE                         R6 K30 [{"AssetIds", "CanAddNew", "PanelBlockerLocalizationKey", "InvalidAddLocalizationKey", "IsSelectedInstanceValid", "IsMultiSelect", "LayoutOrder", "LocalizationKey"}]
      144 NEWTABLE                         R7 0 9
      146 LOADK                            R8 K54 [11581814132]
      147 LOADK                            R9 K55 [2510235063]
      148 LOADK                            R10 K56 [2510242378]
      149 LOADK                            R11 K57 [2510238627]
      150 LOADK                            R12 K58 [4849499887]
      151 LOADK                            R13 K59 [3823158750]
      152 LOADK                            R14 K60 [3716636630]
      153 LOADK                            R15 K61 [3576717965]
      154 LOADK                            R16 K62 [4689362868]
      155 SETLIST                          R7 R8 9 [1]
      157 SETTABLEKS                       R7 R6 K29 ["AssetIds"]
      159 LOADB                            R7 1
      160 SETTABLEKS                       R7 R6 K17 ["CanAddNew"]
      162 LOADK                            R7 K63 ["PanelBlockerAddAnimation"]
      163 SETTABLEKS                       R7 R6 K18 ["PanelBlockerLocalizationKey"]
      165 LOADK                            R7 K64 ["AnimationInvalidAdd"]
      166 SETTABLEKS                       R7 R6 K19 ["InvalidAddLocalizationKey"]
      168 DUPCLOSURE                       R7 K65 [PROTO_2]
      169 SETTABLEKS                       R7 R6 K20 ["IsSelectedInstanceValid"]
      171 LOADB                            R7 0
      172 SETTABLEKS                       R7 R6 K21 ["IsMultiSelect"]
      174 LOADN                            R7 3
      175 SETTABLEKS                       R7 R6 K22 ["LayoutOrder"]
      177 GETTABLEKS                       R8 R2 K28 ["LOCALIZATION_KEYS"]
      179 GETTABLEKS                       R7 R8 K9 ["Animations"]
      181 SETTABLEKS                       R7 R6 K23 ["LocalizationKey"]
      183 SETTABLE                         R6 R4 R5
      184 NEWTABLE                         R5 16 0
      186 LOADK                            R6 K54 [11581814132]
      187 LOADK                            R7 K66 [11581512087]
      188 SETTABLE                         R7 R5 R6
      189 LOADK                            R6 K55 [2510235063]
      190 LOADK                            R7 K67 [10921258489]
      191 SETTABLE                         R7 R5 R6
      192 LOADK                            R6 K56 [2510242378]
      193 LOADK                            R7 K68 [10921269718]
      194 SETTABLE                         R7 R5 R6
      195 LOADK                            R6 K57 [2510238627]
      196 LOADK                            R7 K69 [10921261968]
      197 SETTABLE                         R7 R5 R6
      198 LOADK                            R6 K58 [4849499887]
      199 LOADK                            R7 K70 [4841405708]
      200 SETTABLE                         R7 R5 R6
      201 LOADK                            R6 K59 [3823158750]
      202 LOADK                            R7 K71 [3337994105]
      203 SETTABLE                         R7 R5 R6
      204 LOADK                            R6 K60 [3716636630]
      205 LOADK                            R7 K72 [3333499508]
      206 SETTABLE                         R7 R5 R6
      207 LOADK                            R6 K61 [3576717965]
      208 LOADK                            R7 K73 [3337978742]
      209 SETTABLE                         R7 R5 R6
      210 LOADK                            R6 K62 [4689362868]
      211 LOADK                            R7 K74 [4686925579]
      212 SETTABLE                         R7 R5 R6
      213 DUPTABLE                         R6 K77 [{"Default", "Custom"}]
      214 LOADK                            R7 K75 ["Default"]
      215 SETTABLEKS                       R7 R6 K75 ["Default"]
      217 LOADK                            R7 K76 ["Custom"]
      218 SETTABLEKS                       R7 R6 K76 ["Custom"]
      220 NEWTABLE                         R7 8 0
      222 SETTABLEKS                       R4 R7 K78 ["TABS_INFO"]
      224 SETTABLEKS                       R3 R7 K79 ["TABS_KEYS"]
      226 SETTABLEKS                       R5 R7 K80 ["AnimationIdToSequenceId"]
      228 LOADK                            R8 K81 ["PreviewAvatar"]
      229 SETTABLEKS                       R8 R7 K82 ["PreviewAvatarName"]
      231 SETTABLEKS                       R6 R7 K83 ["CategoryPrefixes"]
      233 RETURN                           R7 1
