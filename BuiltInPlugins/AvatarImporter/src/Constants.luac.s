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
       42 DUPTABLE                         R3 K27 [{"RTHRO", "RTHRO_SLENDER", "R15", "CUSTOM"}]
       43 LOADK                            R4 K28 ["Rthro"]
       44 SETTABLEKS                       R4 R3 K23 ["RTHRO"]
       46 LOADK                            R4 K29 ["RthroSlender"]
       47 SETTABLEKS                       R4 R3 K24 ["RTHRO_SLENDER"]
       49 LOADK                            R4 K25 ["R15"]
       50 SETTABLEKS                       R4 R3 K25 ["R15"]
       52 LOADK                            R4 K30 ["Custom"]
       53 SETTABLEKS                       R4 R3 K26 ["CUSTOM"]
       55 SETTABLEKS                       R3 R2 K31 ["AVATAR_TYPE"]
       57 DUPTABLE                         R3 K32 [{"Rthro", "RthroSlender", "R15"}]
       58 LOADK                            R4 K33 ["ProportionsNormal"]
       59 SETTABLEKS                       R4 R3 K28 ["Rthro"]
       61 LOADK                            R4 K34 ["ProportionsSlender"]
       62 SETTABLEKS                       R4 R3 K29 ["RthroSlender"]
       64 LOADK                            R4 K35 ["Classic"]
       65 SETTABLEKS                       R4 R3 K25 ["R15"]
       67 SETTABLEKS                       R3 R2 K36 ["TYPE_TO_SCALE"]
       69 DUPTABLE                         R3 K40 [{"title", "height", "description"}]
       70 LOADK                            R4 K41 ["Rthro Type"]
       71 SETTABLEKS                       R4 R3 K37 ["title"]
       73 LOADK                            R4 K42 [6.25]
       74 SETTABLEKS                       R4 R3 K38 ["height"]
       76 LOADK                            R4 K43 ["shoulders wider than hips"]
       77 SETTABLEKS                       R4 R3 K39 ["description"]
       79 SETTABLEKS                       R3 R2 K44 ["RTHRO_INFO"]
       81 DUPTABLE                         R3 K40 [{"title", "height", "description"}]
       82 LOADK                            R4 K45 ["Rthro Slender Type"]
       83 SETTABLEKS                       R4 R3 K37 ["title"]
       85 LOADK                            R4 K46 [5.625]
       86 SETTABLEKS                       R4 R3 K38 ["height"]
       88 LOADK                            R4 K47 ["shoulders narrower than hips"]
       89 SETTABLEKS                       R4 R3 K39 ["description"]
       91 SETTABLEKS                       R3 R2 K48 ["RTHRO_SLENDER_INFO"]
       93 DUPTABLE                         R3 K49 [{"title", "height"}]
       94 LOADK                            R4 K50 ["R15 Type"]
       95 SETTABLEKS                       R4 R3 K37 ["title"]
       97 LOADN                            R4 5
       98 SETTABLEKS                       R4 R3 K38 ["height"]
      100 SETTABLEKS                       R3 R2 K51 ["R15_INFO"]
      102 DUPTABLE                         R3 K52 [{"title"}]
      103 LOADK                            R4 K53 ["Custom Type"]
      104 SETTABLEKS                       R4 R3 K37 ["title"]
      106 SETTABLEKS                       R3 R2 K54 ["CUSTOM_INFO"]
      108 LOADN                            R3 4
      109 SETTABLEKS                       R3 R2 K55 ["BUTTON_AMT"]
      111 LOADN                            R3 146
      112 SETTABLEKS                       R3 R2 K56 ["BUTTON_WIDTH"]
      114 LOADN                            R3 219
      115 SETTABLEKS                       R3 R2 K57 ["BUTTON_HEIGHT"]
      117 LOADN                            R3 67
      118 SETTABLEKS                       R3 R2 K58 ["BUTTON_SIDE_PADDING"]
      120 LOADN                            R3 37
      121 SETTABLEKS                       R3 R2 K59 ["BUTTON_CENTER_PADDING"]
      123 LOADN                            R3 63
      124 SETTABLEKS                       R3 R2 K60 ["BUTTON_TOP_PADDING"]
      126 GETTABLEKS                       R6 R2 K58 ["BUTTON_SIDE_PADDING"]
      128 GETTABLEKS                       R8 R2 K56 ["BUTTON_WIDTH"]
      130 GETTABLEKS                       R9 R2 K55 ["BUTTON_AMT"]
      132 MUL                              R7 R8 R9
      133 ADD                              R5 R6 R7
      134 GETTABLEKS                       R7 R2 K59 ["BUTTON_CENTER_PADDING"]
      136 GETTABLEKS                       R9 R2 K55 ["BUTTON_AMT"]
      138 SUBK                             R8 R9 K61 [1]
      139 MUL                              R6 R7 R8
      140 ADD                              R4 R5 R6
      141 GETTABLEKS                       R5 R2 K58 ["BUTTON_SIDE_PADDING"]
      143 ADD                              R3 R4 R5
      144 SETTABLEKS                       R3 R2 K62 ["BACKGROUND_WIDTH"]
      146 LOADN                            R3 157
      147 SETTABLEKS                       R3 R2 K63 ["BACKGROUND_HEIGHT"]
      149 MOVE                             R3 R1
      150 NEWTABLE                         R4 0 4
      152 LOADK                            R5 K64 ["AVATAR"]
      153 LOADK                            R6 K65 ["LOADING"]
      154 LOADK                            R7 K66 ["ERROR"]
      155 LOADK                            R8 K67 ["REDIRECT_RIG"]
      156 SETLIST                          R4 R5 4 [1]
      158 CALL                             R3 1 1
      159 SETTABLEKS                       R3 R2 K68 ["SCREENS"]
      161 NEWTABLE                         R3 4 0
      163 GETTABLEKS                       R4 R2 K31 ["AVATAR_TYPE"]
      165 GETTABLEKS                       R4 R4 K25 ["R15"]
      167 DUPTABLE                         R5 K75 [{"HeadScale", "BodyHeightScale", "BodyWidthScale", "BodyDepthScale", "BodyTypeScale", "BodyProportionScale"}]
      168 LOADN                            R6 1
      169 SETTABLEKS                       R6 R5 K69 ["HeadScale"]
      171 LOADN                            R6 1
      172 SETTABLEKS                       R6 R5 K70 ["BodyHeightScale"]
      174 LOADN                            R6 1
      175 SETTABLEKS                       R6 R5 K71 ["BodyWidthScale"]
      177 LOADN                            R6 1
      178 SETTABLEKS                       R6 R5 K72 ["BodyDepthScale"]
      180 LOADN                            R6 0
      181 SETTABLEKS                       R6 R5 K73 ["BodyTypeScale"]
      183 LOADN                            R6 0
      184 SETTABLEKS                       R6 R5 K74 ["BodyProportionScale"]
      186 SETTABLE                         R5 R3 R4
      187 GETTABLEKS                       R4 R2 K31 ["AVATAR_TYPE"]
      189 GETTABLEKS                       R4 R4 K23 ["RTHRO"]
      191 DUPTABLE                         R5 K75 [{"HeadScale", "BodyHeightScale", "BodyWidthScale", "BodyDepthScale", "BodyTypeScale", "BodyProportionScale"}]
      192 LOADN                            R6 1
      193 SETTABLEKS                       R6 R5 K69 ["HeadScale"]
      195 LOADN                            R6 1
      196 SETTABLEKS                       R6 R5 K70 ["BodyHeightScale"]
      198 LOADN                            R6 1
      199 SETTABLEKS                       R6 R5 K71 ["BodyWidthScale"]
      201 LOADN                            R6 1
      202 SETTABLEKS                       R6 R5 K72 ["BodyDepthScale"]
      204 LOADN                            R6 1
      205 SETTABLEKS                       R6 R5 K73 ["BodyTypeScale"]
      207 LOADN                            R6 0
      208 SETTABLEKS                       R6 R5 K74 ["BodyProportionScale"]
      210 SETTABLE                         R5 R3 R4
      211 GETTABLEKS                       R4 R2 K31 ["AVATAR_TYPE"]
      213 GETTABLEKS                       R4 R4 K24 ["RTHRO_SLENDER"]
      215 DUPTABLE                         R5 K75 [{"HeadScale", "BodyHeightScale", "BodyWidthScale", "BodyDepthScale", "BodyTypeScale", "BodyProportionScale"}]
      216 LOADN                            R6 1
      217 SETTABLEKS                       R6 R5 K69 ["HeadScale"]
      219 LOADN                            R6 1
      220 SETTABLEKS                       R6 R5 K70 ["BodyHeightScale"]
      222 LOADN                            R6 1
      223 SETTABLEKS                       R6 R5 K71 ["BodyWidthScale"]
      225 LOADN                            R6 1
      226 SETTABLEKS                       R6 R5 K72 ["BodyDepthScale"]
      228 LOADN                            R6 1
      229 SETTABLEKS                       R6 R5 K73 ["BodyTypeScale"]
      231 LOADN                            R6 1
      232 SETTABLEKS                       R6 R5 K74 ["BodyProportionScale"]
      234 SETTABLE                         R5 R3 R4
      235 SETTABLEKS                       R3 R2 K76 ["SCALE_VALUES_DEFAULTS"]
      237 LOADK                            R3 K77 ["No FBX file selected"]
      238 SETTABLEKS                       R3 R2 K78 ["ERROR_NO_FILE"]
      240 GETIMPORT                        R3 K82 [Enum.Font.SourceSans]
      242 SETTABLEKS                       R3 R2 K83 ["FONT"]
      244 GETIMPORT                        R3 K85 [Enum.Font.SourceSansSemibold]
      246 SETTABLEKS                       R3 R2 K86 ["FONT_SEMIBOLD"]
      248 GETIMPORT                        R3 K88 [Enum.Font.SourceSansBold]
      250 SETTABLEKS                       R3 R2 K89 ["FONT_BOLD"]
      252 LOADN                            R3 14
      253 SETTABLEKS                       R3 R2 K90 ["FONT_SIZE_SMALL"]
      255 LOADN                            R3 16
      256 SETTABLEKS                       R3 R2 K91 ["FONT_SIZE_MEDIUM"]
      258 LOADN                            R3 18
      259 SETTABLEKS                       R3 R2 K92 ["FONT_SIZE_LARGE"]
      261 LOADN                            R3 20
      262 SETTABLEKS                       R3 R2 K93 ["FONT_SIZE_TITLE"]
      264 LOADK                            R3 K94 ["Avatar file needs to be FBX file following Avatar types and import requirements"]
      265 SETTABLEKS                       R3 R2 K95 ["REQUIREMENTS_DESCRIPTION"]
      267 LOADK                            R3 K96 ["What are Avatar types and import requirements?"]
      268 SETTABLEKS                       R3 R2 K97 ["REQUIREMENTS_LINK_TEXT"]
      270 GETIMPORT                        R3 K100 [Color3.fromHex]
      272 LOADK                            R4 K101 ["#FFC107"]
      273 CALL                             R3 1 1
      274 SETTABLEKS                       R3 R2 K102 ["WARNING_COLOR"]
      276 GETIMPORT                        R3 K100 [Color3.fromHex]
      278 LOADK                            R4 K103 ["#212529"]
      279 CALL                             R3 1 1
      280 SETTABLEKS                       R3 R2 K104 ["WARNING_TEXT_COLOR"]
      282 RETURN                           R2 1
