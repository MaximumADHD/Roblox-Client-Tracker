PROTO_0:
        0 NEWTABLE                         R2 0 1
        2 DUPTABLE                         R3 K7 [{[1], ["creatorType"] = "User", ["Key"] = 1, ["name"], ["Text"]}]
        3 GETUPVAL                         R4 0
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K0 ["creatorId"]
        7 LOADK                            R6 K8 ["General"]
        8 LOADK                            R7 K9 ["Me"]
        9 NAMECALL                         R4 R1 K10 ["getText"]
       11 CALL                             R4 3 1
       12 SETTABLEKS                       R4 R3 K5 ["name"]
       14 LOADK                            R6 K8 ["General"]
       15 LOADK                            R7 K9 ["Me"]
       16 NAMECALL                         R4 R1 K10 ["getText"]
       18 CALL                             R4 3 1
       19 SETTABLEKS                       R4 R3 K6 ["Text"]
       21 SETLIST                          R2 R3 1 [1]
       23 LOADN                            R3 2
       24 GETIMPORT                        R4 K12 [game]
       26 GETTABLEKS                       R4 R4 K13 ["CreatorType"]
       28 GETIMPORT                        R5 K16 [Enum.CreatorType.Group]
       30 JUMPIFNOTEQ                      R4 R5 ; [+24]
       32 GETIMPORT                        R4 K18 [next]
       34 MOVE                             R5 R0
       35 CALL                             R4 1 1
       36 JUMPIFNOTEQKNIL                  R4 ; [+18]
       38 DUPTABLE                         R4 K20 [{["name"] = "", ["Text"] = "", ["creatorType"] = "Group", [4], ["Key"]}]
       39 GETIMPORT                        R5 K12 [game]
       41 GETTABLEKS                       R5 R5 K21 ["CreatorId"]
       43 SETTABLEKS                       R5 R4 K0 ["creatorId"]
       45 SETTABLEKS                       R3 R4 K3 ["Key"]
       47 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       49 MOVE                             R6 R2
       50 MOVE                             R7 R4
       51 GETIMPORT                        R5 K24 [table.insert]
       53 CALL                             R5 2 0
       54 RETURN                           R2 1
       55 GETIMPORT                        R4 K26 [pairs]
       57 MOVE                             R5 R0
       58 CALL                             R4 1 3
       59 FORGPREP_NEXT                    R4
       60 DUPTABLE                         R9 K28 [{["name"], ["Text"], ["creatorType"] = "Group", [4], ["item"], ["Key"]}]
       61 GETTABLEKS                       R10 R8 K5 ["name"]
       63 SETTABLEKS                       R10 R9 K5 ["name"]
       65 GETTABLEKS                       R10 R8 K5 ["name"]
       67 SETTABLEKS                       R10 R9 K6 ["Text"]
       69 GETTABLEKS                       R10 R8 K29 ["id"]
       71 SETTABLEKS                       R10 R9 K0 ["creatorId"]
       73 SETTABLEKS                       R8 R9 K27 ["item"]
       75 SETTABLEKS                       R3 R9 K3 ["Key"]
       77 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       79 MOVE                             R11 R2
       80 MOVE                             R12 R9
       81 GETIMPORT                        R10 K24 [table.insert]
       83 CALL                             R10 2 0
       84 ADDK                             R3 R3 K4 [1]
       85 FORGLOOP                         R4 2 ; [-26]
       87 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["wrapStrictTable"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["convertArrayToTable"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K6 ["Util"]
       33 GETTABLEKS                       R4 R4 K9 ["getUserId"]
       35 CALL                             R3 1 1
       36 NEWTABLE                         R4 16 0
       38 GETIMPORT                        R5 K13 [Enum.Font.SourceSans]
       40 SETTABLEKS                       R5 R4 K14 ["FONT"]
       42 GETIMPORT                        R5 K16 [Enum.Font.SourceSansBold]
       44 SETTABLEKS                       R5 R4 K17 ["FONT_BOLD"]
       46 LOADN                            R5 14
       47 SETTABLEKS                       R5 R4 K18 ["FONT_SIZE_SMALL"]
       49 LOADN                            R5 16
       50 SETTABLEKS                       R5 R4 K19 ["FONT_SIZE_MEDIUM"]
       52 LOADN                            R5 18
       53 SETTABLEKS                       R5 R4 K20 ["FONT_SIZE_LARGE"]
       55 LOADN                            R5 22
       56 SETTABLEKS                       R5 R4 K21 ["FONT_SIZE_TITLE"]
       58 LOADN                            R5 35
       59 SETTABLEKS                       R5 R4 K22 ["FOOTER_HEIGHT"]
       61 LOADN                            R5 100
       62 SETTABLEKS                       R5 R4 K23 ["MESSAGE_BOX_BUTTON_WIDTH"]
       64 LOADN                            R5 50
       65 SETTABLEKS                       R5 R4 K24 ["NAME_CHARACTER_LIMIT"]
       67 LOADN                            R5 1000
       68 SETTABLEKS                       R5 R4 K25 ["DESCRIPTION_CHARACTER_LIMIT"]
       70 LOADN                            R5 180
       71 SETTABLEKS                       R5 R4 K26 ["TITLE_GUTTER_WIDTH"]
       73 DUPTABLE                         R5 K43 [{["ARROW_DOWN_ICON"] = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png", ["IMAGE_PLACEHOLDER"] = "rbxasset://textures/StudioConvertToPackagePlugin/placeholder.png", ["TOGGLE_ON_DARK"] = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png", ["TOGGLE_ON_LIGHT"] = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png", ["TOGGLE_OFF_DARK"] = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png", ["TOGGLE_OFF_LIGHT"] = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png", ["TOGGLE_DISABLE_DARK"] = "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png", ["TOGGLE_DISABLE_LIGHT"] = "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png"}]
       74 SETTABLEKS                       R5 R4 K44 ["Images"]
       76 DUPTABLE                         R5 K49 [{["User"] = 1, ["Group"] = 2}]
       77 SETTABLEKS                       R5 R4 K50 ["OWNER_TYPES"]
       79 NEWTABLE                         R5 2 0
       81 GETIMPORT                        R6 K52 [Enum.CreatorType.User]
       83 GETTABLEKS                       R7 R4 K50 ["OWNER_TYPES"]
       85 GETTABLEKS                       R7 R7 K45 ["User"]
       87 SETTABLE                         R7 R5 R6
       88 GETIMPORT                        R6 K53 [Enum.CreatorType.Group]
       90 GETTABLEKS                       R7 R4 K50 ["OWNER_TYPES"]
       92 GETTABLEKS                       R7 R7 K47 ["Group"]
       94 SETTABLE                         R7 R5 R6
       95 SETTABLEKS                       R5 R4 K54 ["CREATOR_ENUM_TO_OWNER_TYPE"]
       97 MOVE                             R5 R2
       98 NEWTABLE                         R6 0 3
      100 LOADK                            R7 K55 ["CONFIGURE_ASSET"]
      101 LOADK                            R8 K56 ["UPLOADING_ASSET"]
      102 LOADK                            R9 K57 ["UPLOAD_ASSET_RESULT"]
      103 SETLIST                          R6 R7 3 [1]
      105 CALL                             R5 1 1
      106 SETTABLEKS                       R5 R4 K58 ["SCREENS"]
      108 DUPCLOSURE                       R5 K59 [PROTO_0]
      109 CAPTURE                          VAL R3
      110 SETTABLEKS                       R5 R4 K60 ["getOwnerDropDownContent"]
      112 MOVE                             R5 R1
      113 MOVE                             R6 R4
      114 LOADK                            R7 K61 ["Constants"]
      115 CALL                             R5 2 -1
      116 RETURN                           R5 -1
