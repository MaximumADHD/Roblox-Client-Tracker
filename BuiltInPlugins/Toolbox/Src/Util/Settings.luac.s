PROTO_0:
        0 DUPTABLE                         R1 K1 [{"_plugin"}]
        1 SETTABLEKS                       R0 R1 K0 ["_plugin"]
        3 GETUPVAL                         R4 0
        4 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K3 [setmetatable]
        9 CALL                             R2 2 0
       10 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_plugin"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R2 1
        4 GETTABLEKS                       R3 R0 K0 ["_plugin"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K1 ["GetSetting"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["shouldLogSettings"]
       13 CALL                             R4 0 1
       14 JUMPIFNOT                        R4 ; [+56]
       15 GETIMPORT                        R4 K4 [print]
       17 LOADK                            R5 K5 ["Settings:_getSetting(setting=\"%s\", default=%s) got value = %s"]
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R8 R1
       20 GETIMPORT                        R7 K7 [tostring]
       22 CALL                             R7 1 1
       23 FASTCALL1                        TYPE R2 ; [+3]
       24 MOVE                             R10 R2
       25 GETIMPORT                        R9 K9 [type]
       27 CALL                             R9 1 1
       28 JUMPIFNOTEQKS                    R9 K10 ["string"] ; [+11]
       30 LOADK                            R9 K11 ["\""]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R13 R2
       33 GETIMPORT                        R12 K7 [tostring]
       35 CALL                             R12 1 1
       36 MOVE                             R10 R12
       37 LOADK                            R11 K11 ["\""]
       38 CONCAT                           R8 R9 R11
       39 JUMPIF                           R8 ; [+5]
       40 FASTCALL1                        TOSTRING R2 ; [+3]
       41 MOVE                             R9 R2
       42 GETIMPORT                        R8 K7 [tostring]
       44 CALL                             R8 1 1
       45 FASTCALL1                        TYPE R3 ; [+3]
       46 MOVE                             R11 R3
       47 GETIMPORT                        R10 K9 [type]
       49 CALL                             R10 1 1
       50 JUMPIFNOTEQKS                    R10 K10 ["string"] ; [+11]
       52 LOADK                            R10 K11 ["\""]
       53 FASTCALL1                        TOSTRING R3 ; [+3]
       54 MOVE                             R14 R3
       55 GETIMPORT                        R13 K7 [tostring]
       57 CALL                             R13 1 1
       58 MOVE                             R11 R13
       59 LOADK                            R12 K11 ["\""]
       60 CONCAT                           R9 R10 R12
       61 JUMPIF                           R9 ; [+5]
       62 FASTCALL1                        TOSTRING R3 ; [+3]
       63 MOVE                             R10 R3
       64 GETIMPORT                        R9 K7 [tostring]
       66 CALL                             R9 1 1
       67 NAMECALL                         R5 R5 K12 ["format"]
       69 CALL                             R5 4 -1
       70 CALL                             R4 -1 0
       71 JUMPIF                           R3 ; [+1]
       72 MOVE                             R3 R2
       73 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_plugin"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["shouldLogSettings"]
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+34]
        9 GETIMPORT                        R3 K3 [print]
       11 LOADK                            R4 K4 ["Settings:_setSetting(setting=\"%s\", value=%s)"]
       12 FASTCALL1                        TOSTRING R1 ; [+3]
       13 MOVE                             R7 R1
       14 GETIMPORT                        R6 K6 [tostring]
       16 CALL                             R6 1 1
       17 FASTCALL1                        TYPE R2 ; [+3]
       18 MOVE                             R9 R2
       19 GETIMPORT                        R8 K8 [type]
       21 CALL                             R8 1 1
       22 JUMPIFNOTEQKS                    R8 K9 ["string"] ; [+11]
       24 LOADK                            R8 K10 ["\""]
       25 FASTCALL1                        TOSTRING R2 ; [+3]
       26 MOVE                             R12 R2
       27 GETIMPORT                        R11 K6 [tostring]
       29 CALL                             R11 1 1
       30 MOVE                             R9 R11
       31 LOADK                            R10 K10 ["\""]
       32 CONCAT                           R7 R8 R10
       33 JUMPIF                           R7 ; [+5]
       34 FASTCALL1                        TOSTRING R2 ; [+3]
       35 MOVE                             R8 R2
       36 GETIMPORT                        R7 K6 [tostring]
       38 CALL                             R7 1 1
       39 NAMECALL                         R4 R4 K11 ["format"]
       41 CALL                             R4 3 -1
       42 CALL                             R3 -1 0
       43 GETTABLEKS                       R3 R0 K0 ["_plugin"]
       45 MOVE                             R5 R1
       46 MOVE                             R6 R2
       47 NAMECALL                         R3 R3 K12 ["SetSetting"]
       49 CALL                             R3 3 0
       50 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["Toolbox_SelectedCategoryName"]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K1 ["DEFAULT"]
        4 GETTABLEKS                       R4 R5 K2 ["name"]
        6 NAMECALL                         R1 R0 K3 ["_getSetting"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 LOADK                            R4 K0 ["Toolbox_SelectedCategoryName"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["_setSetting"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_5:
        0 LOADK                            R3 K0 ["Toolbox_SelectedSearchTerm"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["_getSetting"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 LOADK                            R4 K0 ["Toolbox_SelectedSearchTerm"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["_setSetting"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_7:
        0 LOADK                            R3 K0 ["Toolbox_SelectedSortIndex"]
        1 LOADN                            R4 1
        2 NAMECALL                         R1 R0 K1 ["_getSetting"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 LOADK                            R4 K0 ["Toolbox_SelectedSortIndex"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["_setSetting"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_9:
        0 LOADK                            R4 K0 ["Toolbox_ShowScriptWarning"]
        1 LOADK                            R5 K1 ["true"]
        2 NAMECALL                         R2 R0 K2 ["_getSetting"]
        4 CALL                             R2 3 1
        5 JUMPIFEQKS                       R2 K1 ["true"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R4 K0 ["Toolbox_ShowScriptWarning"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R6 R1
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 NAMECALL                         R2 R0 K3 ["_setSetting"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_11:
        0 LOADK                            R3 K0 ["Toolbox_LastAnnouncementViewedKey"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["_getSetting"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 LOADK                            R4 K0 ["Toolbox_LastAnnouncementViewedKey"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R6 R1
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 NAMECALL                         R2 R0 K3 ["_setSetting"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_13:
        0 LOADK                            R3 K0 ["Toolbox_LayoutModeKey"]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K1 ["Grid"]
        4 NAMECALL                         R1 R0 K2 ["_getSetting"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 LOADK                            R4 K0 ["Toolbox_LayoutModeKey"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R6 R1
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 NAMECALL                         R2 R0 K3 ["_setSetting"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["shouldLogSettings"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETIMPORT                        R2 K2 [print]
        7 LOADK                            R3 K3 ["Settings:updateFromPageInfo()"]
        8 CALL                             R2 1 0
        9 GETTABLEKS                       R4 R1 K4 ["categoryName"]
       11 NAMECALL                         R2 R0 K5 ["setSelectedCategoryName"]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R4 R1 K6 ["searchTerm"]
       16 NAMECALL                         R2 R0 K7 ["setSelectedSearchTerm"]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R4 R1 K8 ["sortIndex"]
       21 NAMECALL                         R2 R0 K9 ["setSelectedSortIndex"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldLogSettings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [print]
        7 LOADK                            R2 K3 ["Settings:loadInitialSettings()"]
        8 CALL                             R1 1 0
        9 NEWTABLE                         R1 8 0
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+8]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K4 ["DEFAULT"]
       17 GETTABLEKS                       R2 R3 K5 ["name"]
       19 SETTABLEKS                       R2 R1 K6 ["categoryName"]
       21 JUMP                             ; [+19]
       22 NAMECALL                         R2 R0 K7 ["getSelectedCategoryName"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K6 ["categoryName"]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R2 R3 K8 ["getCategoryByName"]
       30 GETTABLEKS                       R3 R1 K6 ["categoryName"]
       32 CALL                             R2 1 1
       33 JUMPIF                           R2 ; [+7]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R3 R4 K4 ["DEFAULT"]
       37 GETTABLEKS                       R2 R3 K5 ["name"]
       39 SETTABLEKS                       R2 R1 K6 ["categoryName"]
       41 GETUPVAL                         R2 3
       42 CALL                             R2 0 1
       43 JUMPIFNOT                        R2 ; [+17]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R2 R3 K9 ["MARKETPLACE_KEY"]
       47 SETTABLEKS                       R2 R1 K10 ["tab"]
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R3 R4 K4 ["DEFAULT"]
       52 GETTABLEKS                       R2 R3 K5 ["name"]
       54 SETTABLEKS                       R2 R1 K6 ["categoryName"]
       56 GETUPVAL                         R3 2
       57 GETTABLEKS                       R2 R3 K11 ["CREATOR_ROBLOX"]
       59 SETTABLEKS                       R2 R1 K12 ["creator"]
       61 NAMECALL                         R2 R0 K13 ["getSelectedSearchTerm"]
       63 CALL                             R2 1 1
       64 SETTABLEKS                       R2 R1 K14 ["searchTerm"]
       66 NAMECALL                         R2 R0 K15 ["getSelectedSortIndex"]
       68 CALL                             R2 1 1
       69 SETTABLEKS                       R2 R1 K16 ["sortIndex"]
       71 GETUPVAL                         R3 4
       72 GETTABLEKS                       R2 R3 K17 ["canSort"]
       74 GETTABLEKS                       R3 R1 K14 ["searchTerm"]
       76 GETTABLEKS                       R4 R1 K6 ["categoryName"]
       78 CALL                             R2 2 1
       79 JUMPIF                           R2 ; [+8]
       80 GETUPVAL                         R3 4
       81 GETTABLEKS                       R2 R3 K18 ["getDefaultSortForCategory"]
       83 GETTABLEKS                       R3 R1 K6 ["categoryName"]
       85 CALL                             R2 1 1
       86 SETTABLEKS                       R2 R1 K16 ["sortIndex"]
       88 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["DebugFlags"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Types"]
       24 GETTABLEKS                       R3 R4 K9 ["Category"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Src"]
       31 GETTABLEKS                       R5 R6 K8 ["Types"]
       33 GETTABLEKS                       R4 R5 K10 ["Sort"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R7 R0 K5 ["Src"]
       40 GETTABLEKS                       R6 R7 K8 ["Types"]
       42 GETTABLEKS                       R5 R6 K11 ["LayoutMode"]
       44 CALL                             R4 1 1
       45 NEWTABLE                         R5 32 0
       47 SETTABLEKS                       R5 R5 K12 ["__index"]
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R10 R0 K5 ["Src"]
       53 GETTABLEKS                       R9 R10 K6 ["Util"]
       55 GETTABLEKS                       R8 R9 K13 ["ToolboxUtilities"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R6 R7 K14 ["disableMarketplaceAndRecents"]
       60 GETIMPORT                        R8 K4 [require]
       62 GETTABLEKS                       R11 R0 K5 ["Src"]
       64 GETTABLEKS                       R10 R11 K6 ["Util"]
       66 GETTABLEKS                       R9 R10 K13 ["ToolboxUtilities"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R7 R8 K15 ["showRobloxCreatedAssets"]
       71 GETIMPORT                        R8 K4 [require]
       73 GETTABLEKS                       R12 R0 K5 ["Src"]
       75 GETTABLEKS                       R11 R12 K6 ["Util"]
       77 GETTABLEKS                       R10 R11 K16 ["SharedFlags"]
       79 GETTABLEKS                       R9 R10 K17 ["getFFlagToolboxEnableAssetRows"]
       81 CALL                             R8 1 1
       82 DUPCLOSURE                       R9 K18 [PROTO_0]
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R9 R5 K19 ["new"]
       86 DUPCLOSURE                       R9 K20 [PROTO_1]
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R9 R5 K21 ["_getSetting"]
       90 DUPCLOSURE                       R9 K22 [PROTO_2]
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R9 R5 K23 ["_setSetting"]
       94 DUPCLOSURE                       R9 K24 [PROTO_3]
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R9 R5 K25 ["getSelectedCategoryName"]
       98 DUPCLOSURE                       R9 K26 [PROTO_4]
       99 SETTABLEKS                       R9 R5 K27 ["setSelectedCategoryName"]
      101 DUPCLOSURE                       R9 K28 [PROTO_5]
      102 SETTABLEKS                       R9 R5 K29 ["getSelectedSearchTerm"]
      104 DUPCLOSURE                       R9 K30 [PROTO_6]
      105 SETTABLEKS                       R9 R5 K31 ["setSelectedSearchTerm"]
      107 DUPCLOSURE                       R9 K32 [PROTO_7]
      108 SETTABLEKS                       R9 R5 K33 ["getSelectedSortIndex"]
      110 DUPCLOSURE                       R9 K34 [PROTO_8]
      111 SETTABLEKS                       R9 R5 K35 ["setSelectedSortIndex"]
      113 DUPCLOSURE                       R9 K36 [PROTO_9]
      114 SETTABLEKS                       R9 R5 K37 ["getShowScriptWarning"]
      116 DUPCLOSURE                       R9 K38 [PROTO_10]
      117 SETTABLEKS                       R9 R5 K39 ["setShowScriptWarning"]
      119 DUPCLOSURE                       R9 K40 [PROTO_11]
      120 SETTABLEKS                       R9 R5 K41 ["getLastAnnouncementViewedKey"]
      122 DUPCLOSURE                       R9 K42 [PROTO_12]
      123 SETTABLEKS                       R9 R5 K43 ["setLastAnnouncementViewedKey"]
      125 MOVE                             R9 R8
      126 CALL                             R9 0 1
      127 JUMPIFNOT                        R9 ; [+7]
      128 DUPCLOSURE                       R9 K44 [PROTO_13]
      129 CAPTURE                          VAL R4
      130 SETTABLEKS                       R9 R5 K45 ["getLayoutMode"]
      132 DUPCLOSURE                       R9 K46 [PROTO_14]
      133 SETTABLEKS                       R9 R5 K47 ["setLayoutMode"]
      135 DUPCLOSURE                       R9 K48 [PROTO_15]
      136 CAPTURE                          VAL R1
      137 SETTABLEKS                       R9 R5 K49 ["updateFromPageInfo"]
      139 DUPCLOSURE                       R9 K50 [PROTO_16]
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R9 R5 K51 ["loadInitialSettings"]
      147 RETURN                           R5 1
