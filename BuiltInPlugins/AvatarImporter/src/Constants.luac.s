MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["src"]
       11 GETTABLEKS                       R2 R2 K6 ["utils"]
       13 GETTABLEKS                       R2 R2 K7 ["convertArrayToTable"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 64 0
       18 LOADK                            R3 K8 ["AvatarImporter"]
       19 SETTABLEKS                       R3 R2 K9 ["NAME"]
       21 LOADK                            R3 K10 ["Avatar Importer"]
       22 SETTABLEKS                       R3 R2 K11 ["TITLE"]
       24 LOADK                            R3 K12 ["Avatar"]
       25 SETTABLEKS                       R3 R2 K13 ["TOOLBAR_NAME"]
       27 LOADK                            R3 K10 ["Avatar Importer"]
       28 SETTABLEKS                       R3 R2 K14 ["BUTTON_NAME"]
       30 LOADK                            R3 K15 ["Import an Avatar with a .fbx file"]
       31 SETTABLEKS                       R3 R2 K16 ["BUTTON_TOOLTIP"]
       33 LOADK                            R3 K17 ["articles/using-avatar-importer"]
       34 SETTABLEKS                       R3 R2 K18 ["AVATAR_IMPORTER_DEVHUB"]
       36 LOADK                            R3 K19 ["https://developer.roblox.com/en-us/articles/using-avatar-importer"]
       37 SETTABLEKS                       R3 R2 K20 ["AVATAR_IMPORTER_DEVHUB_URL"]
       39 LOADK                            R3 K21 ["Click here to learn more."]
       40 SETTABLEKS                       R3 R2 K22 ["CLICK_HERE"]
       42 DUPTABLE                         R3 K30 [{["RTHRO"] = "Rthro", ["RTHRO_SLENDER"] = "RthroSlender", ["R15"] = "R15", ["CUSTOM"] = "Custom"}]
       43 SETTABLEKS                       R3 R2 K31 ["AVATAR_TYPE"]
       45 DUPTABLE                         R3 K35 [{["Rthro"] = "ProportionsNormal", ["RthroSlender"] = "ProportionsSlender", ["R15"] = "Classic"}]
       46 SETTABLEKS                       R3 R2 K36 ["TYPE_TO_SCALE"]
       48 DUPTABLE                         R3 K43 [{["title"] = "Rthro Type", ["height"] = 6.25, ["description"] = "shoulders wider than hips"}]
       49 SETTABLEKS                       R3 R2 K44 ["RTHRO_INFO"]
       51 DUPTABLE                         R3 K48 [{["title"] = "Rthro Slender Type", ["height"] = 5.625, ["description"] = "shoulders narrower than hips"}]
       52 SETTABLEKS                       R3 R2 K49 ["RTHRO_SLENDER_INFO"]
       54 DUPTABLE                         R3 K52 [{["title"] = "R15 Type", ["height"] = 5}]
       55 SETTABLEKS                       R3 R2 K53 ["R15_INFO"]
       57 DUPTABLE                         R3 K55 [{["title"] = "Custom Type"}]
       58 SETTABLEKS                       R3 R2 K56 ["CUSTOM_INFO"]
       60 LOADN                            R3 4
       61 SETTABLEKS                       R3 R2 K57 ["BUTTON_AMT"]
       63 LOADN                            R3 146
       64 SETTABLEKS                       R3 R2 K58 ["BUTTON_WIDTH"]
       66 LOADN                            R3 219
       67 SETTABLEKS                       R3 R2 K59 ["BUTTON_HEIGHT"]
       69 LOADN                            R3 67
       70 SETTABLEKS                       R3 R2 K60 ["BUTTON_SIDE_PADDING"]
       72 LOADN                            R3 37
       73 SETTABLEKS                       R3 R2 K61 ["BUTTON_CENTER_PADDING"]
       75 LOADN                            R3 63
       76 SETTABLEKS                       R3 R2 K62 ["BUTTON_TOP_PADDING"]
       78 GETTABLEKS                       R6 R2 K60 ["BUTTON_SIDE_PADDING"]
       80 GETTABLEKS                       R8 R2 K58 ["BUTTON_WIDTH"]
       82 GETTABLEKS                       R9 R2 K57 ["BUTTON_AMT"]
       84 MUL                              R7 R8 R9
       85 ADD                              R5 R6 R7
       86 GETTABLEKS                       R7 R2 K61 ["BUTTON_CENTER_PADDING"]
       88 GETTABLEKS                       R9 R2 K57 ["BUTTON_AMT"]
       90 SUBK                             R8 R9 K63 [1]
       91 MUL                              R6 R7 R8
       92 ADD                              R4 R5 R6
       93 GETTABLEKS                       R5 R2 K60 ["BUTTON_SIDE_PADDING"]
       95 ADD                              R3 R4 R5
       96 SETTABLEKS                       R3 R2 K64 ["BACKGROUND_WIDTH"]
       98 LOADN                            R3 413
       99 SETTABLEKS                       R3 R2 K65 ["BACKGROUND_HEIGHT"]
      101 MOVE                             R3 R1
      102 NEWTABLE                         R4 0 4
      104 LOADK                            R5 K66 ["AVATAR"]
      105 LOADK                            R6 K67 ["LOADING"]
      106 LOADK                            R7 K68 ["ERROR"]
      107 LOADK                            R8 K69 ["REDIRECT_RIG"]
      108 SETLIST                          R4 R5 4 [1]
      110 CALL                             R3 1 1
      111 SETTABLEKS                       R3 R2 K70 ["SCREENS"]
      113 NEWTABLE                         R3 4 0
      115 GETTABLEKS                       R4 R2 K31 ["AVATAR_TYPE"]
      117 GETTABLEKS                       R4 R4 K27 ["R15"]
      119 DUPTABLE                         R5 K78 [{["HeadScale"] = 1, ["BodyHeightScale"] = 1, ["BodyWidthScale"] = 1, ["BodyDepthScale"] = 1, ["BodyTypeScale"] = 0, ["BodyProportionScale"] = 0}]
      120 SETTABLE                         R5 R3 R4
      121 GETTABLEKS                       R4 R2 K31 ["AVATAR_TYPE"]
      123 GETTABLEKS                       R4 R4 K23 ["RTHRO"]
      125 DUPTABLE                         R5 K79 [{["HeadScale"] = 1, ["BodyHeightScale"] = 1, ["BodyWidthScale"] = 1, ["BodyDepthScale"] = 1, ["BodyTypeScale"] = 1, ["BodyProportionScale"] = 0}]
      126 SETTABLE                         R5 R3 R4
      127 GETTABLEKS                       R4 R2 K31 ["AVATAR_TYPE"]
      129 GETTABLEKS                       R4 R4 K25 ["RTHRO_SLENDER"]
      131 DUPTABLE                         R5 K80 [{["HeadScale"] = 1, ["BodyHeightScale"] = 1, ["BodyWidthScale"] = 1, ["BodyDepthScale"] = 1, ["BodyTypeScale"] = 1, ["BodyProportionScale"] = 1}]
      132 SETTABLE                         R5 R3 R4
      133 SETTABLEKS                       R3 R2 K81 ["SCALE_VALUES_DEFAULTS"]
      135 LOADK                            R3 K82 ["No FBX file selected"]
      136 SETTABLEKS                       R3 R2 K83 ["ERROR_NO_FILE"]
      138 GETIMPORT                        R3 K87 [Enum.Font.SourceSans]
      140 SETTABLEKS                       R3 R2 K88 ["FONT"]
      142 GETIMPORT                        R3 K90 [Enum.Font.SourceSansSemibold]
      144 SETTABLEKS                       R3 R2 K91 ["FONT_SEMIBOLD"]
      146 GETIMPORT                        R3 K93 [Enum.Font.SourceSansBold]
      148 SETTABLEKS                       R3 R2 K94 ["FONT_BOLD"]
      150 LOADN                            R3 14
      151 SETTABLEKS                       R3 R2 K95 ["FONT_SIZE_SMALL"]
      153 LOADN                            R3 16
      154 SETTABLEKS                       R3 R2 K96 ["FONT_SIZE_MEDIUM"]
      156 LOADN                            R3 18
      157 SETTABLEKS                       R3 R2 K97 ["FONT_SIZE_LARGE"]
      159 LOADN                            R3 20
      160 SETTABLEKS                       R3 R2 K98 ["FONT_SIZE_TITLE"]
      162 LOADK                            R3 K99 ["Avatar file needs to be FBX file following Avatar types and import requirements"]
      163 SETTABLEKS                       R3 R2 K100 ["REQUIREMENTS_DESCRIPTION"]
      165 LOADK                            R3 K101 ["What are Avatar types and import requirements?"]
      166 SETTABLEKS                       R3 R2 K102 ["REQUIREMENTS_LINK_TEXT"]
      168 GETIMPORT                        R3 K105 [Color3.fromHex]
      170 LOADK                            R4 K106 ["#FFC107"]
      171 CALL                             R3 1 1
      172 SETTABLEKS                       R3 R2 K107 ["WARNING_COLOR"]
      174 GETIMPORT                        R3 K105 [Color3.fromHex]
      176 LOADK                            R4 K108 ["#212529"]
      177 CALL                             R3 1 1
      178 SETTABLEKS                       R3 R2 K109 ["WARNING_TEXT_COLOR"]
      180 RETURN                           R2 1
