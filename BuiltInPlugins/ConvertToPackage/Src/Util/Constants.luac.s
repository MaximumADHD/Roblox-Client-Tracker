PROTO_0:
        0 NEWTABLE                         R2 0 1
        2 DUPTABLE                         R3 K5 [{"creatorId", "creatorType", "Key", "name", "Text"}]
        3 GETUPVAL                         R4 0
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K0 ["creatorId"]
        7 LOADK                            R4 K6 ["User"]
        8 SETTABLEKS                       R4 R3 K1 ["creatorType"]
       10 LOADN                            R4 1
       11 SETTABLEKS                       R4 R3 K2 ["Key"]
       13 LOADK                            R6 K7 ["General"]
       14 LOADK                            R7 K8 ["Me"]
       15 NAMECALL                         R4 R1 K9 ["getText"]
       17 CALL                             R4 3 1
       18 SETTABLEKS                       R4 R3 K3 ["name"]
       20 LOADK                            R6 K7 ["General"]
       21 LOADK                            R7 K8 ["Me"]
       22 NAMECALL                         R4 R1 K9 ["getText"]
       24 CALL                             R4 3 1
       25 SETTABLEKS                       R4 R3 K4 ["Text"]
       27 SETLIST                          R2 R3 1 [1]
       29 LOADN                            R3 2
       30 GETIMPORT                        R5 K11 [game]
       32 GETTABLEKS                       R4 R5 K12 ["CreatorType"]
       34 GETIMPORT                        R5 K15 [Enum.CreatorType.Group]
       36 JUMPIFNOTEQ                      R4 R5 ; [+33]
       38 GETIMPORT                        R4 K17 [next]
       40 MOVE                             R5 R0
       41 CALL                             R4 1 1
       42 JUMPIFNOTEQKNIL                  R4 ; [+27]
       44 DUPTABLE                         R4 K18 [{"name", "Text", "creatorType", "creatorId", "Key"}]
       45 LOADK                            R5 K19 [""]
       46 SETTABLEKS                       R5 R4 K3 ["name"]
       48 LOADK                            R5 K19 [""]
       49 SETTABLEKS                       R5 R4 K4 ["Text"]
       51 LOADK                            R5 K14 ["Group"]
       52 SETTABLEKS                       R5 R4 K1 ["creatorType"]
       54 GETIMPORT                        R6 K11 [game]
       56 GETTABLEKS                       R5 R6 K20 ["CreatorId"]
       58 SETTABLEKS                       R5 R4 K0 ["creatorId"]
       60 SETTABLEKS                       R3 R4 K2 ["Key"]
       62 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       64 MOVE                             R6 R2
       65 MOVE                             R7 R4
       66 GETIMPORT                        R5 K23 [table.insert]
       68 CALL                             R5 2 0
       69 RETURN                           R2 1
       70 GETIMPORT                        R4 K25 [pairs]
       72 MOVE                             R5 R0
       73 CALL                             R4 1 3
       74 FORGPREP_NEXT                    R4
       75 DUPTABLE                         R9 K27 [{"name", "Text", "creatorType", "creatorId", "item", "Key"}]
       76 GETTABLEKS                       R10 R8 K3 ["name"]
       78 SETTABLEKS                       R10 R9 K3 ["name"]
       80 GETTABLEKS                       R10 R8 K3 ["name"]
       82 SETTABLEKS                       R10 R9 K4 ["Text"]
       84 LOADK                            R10 K14 ["Group"]
       85 SETTABLEKS                       R10 R9 K1 ["creatorType"]
       87 GETTABLEKS                       R10 R8 K28 ["id"]
       89 SETTABLEKS                       R10 R9 K0 ["creatorId"]
       91 SETTABLEKS                       R8 R9 K26 ["item"]
       93 SETTABLEKS                       R3 R9 K2 ["Key"]
       95 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       97 MOVE                             R11 R2
       98 MOVE                             R12 R9
       99 GETIMPORT                        R10 K23 [table.insert]
      101 CALL                             R10 2 0
      102 ADDK                             R3 R3 K29 [1]
      103 FORGLOOP                         R4 2 ; [-29]
      105 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["wrapStrictTable"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K6 ["Util"]
       24 GETTABLEKS                       R3 R4 K8 ["convertArrayToTable"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Src"]
       31 GETTABLEKS                       R5 R6 K6 ["Util"]
       33 GETTABLEKS                       R4 R5 K9 ["getUserId"]
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
       67 LOADN                            R5 232
       68 SETTABLEKS                       R5 R4 K25 ["DESCRIPTION_CHARACTER_LIMIT"]
       70 LOADN                            R5 180
       71 SETTABLEKS                       R5 R4 K26 ["TITLE_GUTTER_WIDTH"]
       73 DUPTABLE                         R5 K35 [{"ARROW_DOWN_ICON", "IMAGE_PLACEHOLDER", "TOGGLE_ON_DARK", "TOGGLE_ON_LIGHT", "TOGGLE_OFF_DARK", "TOGGLE_OFF_LIGHT", "TOGGLE_DISABLE_DARK", "TOGGLE_DISABLE_LIGHT"}]
       74 LOADK                            R6 K36 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
       75 SETTABLEKS                       R6 R5 K27 ["ARROW_DOWN_ICON"]
       77 LOADK                            R6 K37 ["rbxasset://textures/StudioConvertToPackagePlugin/placeholder.png"]
       78 SETTABLEKS                       R6 R5 K28 ["IMAGE_PLACEHOLDER"]
       80 LOADK                            R6 K38 ["rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"]
       81 SETTABLEKS                       R6 R5 K29 ["TOGGLE_ON_DARK"]
       83 LOADK                            R6 K39 ["rbxasset://textures/RoactStudioWidgets/toggle_on_light.png"]
       84 SETTABLEKS                       R6 R5 K30 ["TOGGLE_ON_LIGHT"]
       86 LOADK                            R6 K40 ["rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png"]
       87 SETTABLEKS                       R6 R5 K31 ["TOGGLE_OFF_DARK"]
       89 LOADK                            R6 K41 ["rbxasset://textures/RoactStudioWidgets/toggle_off_light.png"]
       90 SETTABLEKS                       R6 R5 K32 ["TOGGLE_OFF_LIGHT"]
       92 LOADK                            R6 K42 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"]
       93 SETTABLEKS                       R6 R5 K33 ["TOGGLE_DISABLE_DARK"]
       95 LOADK                            R6 K43 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png"]
       96 SETTABLEKS                       R6 R5 K34 ["TOGGLE_DISABLE_LIGHT"]
       98 SETTABLEKS                       R5 R4 K44 ["Images"]
      100 DUPTABLE                         R5 K47 [{"User", "Group"}]
      101 LOADN                            R6 1
      102 SETTABLEKS                       R6 R5 K45 ["User"]
      104 LOADN                            R6 2
      105 SETTABLEKS                       R6 R5 K46 ["Group"]
      107 SETTABLEKS                       R5 R4 K48 ["OWNER_TYPES"]
      109 NEWTABLE                         R5 2 0
      111 GETIMPORT                        R6 K50 [Enum.CreatorType.User]
      113 GETTABLEKS                       R8 R4 K48 ["OWNER_TYPES"]
      115 GETTABLEKS                       R7 R8 K45 ["User"]
      117 SETTABLE                         R7 R5 R6
      118 GETIMPORT                        R6 K51 [Enum.CreatorType.Group]
      120 GETTABLEKS                       R8 R4 K48 ["OWNER_TYPES"]
      122 GETTABLEKS                       R7 R8 K46 ["Group"]
      124 SETTABLE                         R7 R5 R6
      125 SETTABLEKS                       R5 R4 K52 ["CREATOR_ENUM_TO_OWNER_TYPE"]
      127 MOVE                             R5 R2
      128 NEWTABLE                         R6 0 3
      130 LOADK                            R7 K53 ["CONFIGURE_ASSET"]
      131 LOADK                            R8 K54 ["UPLOADING_ASSET"]
      132 LOADK                            R9 K55 ["UPLOAD_ASSET_RESULT"]
      133 SETLIST                          R6 R7 3 [1]
      135 CALL                             R5 1 1
      136 SETTABLEKS                       R5 R4 K56 ["SCREENS"]
      138 DUPCLOSURE                       R5 K57 [PROTO_0]
      139 CAPTURE                          VAL R3
      140 SETTABLEKS                       R5 R4 K58 ["getOwnerDropDownContent"]
      142 MOVE                             R5 R1
      143 MOVE                             R6 R4
      144 LOADK                            R7 K59 ["Constants"]
      145 CALL                             R5 2 -1
      146 RETURN                           R5 -1
