PROTO_0:
        0 GETIMPORT                        R0 K2 [Color3.new]
        2 GETIMPORT                        R1 K5 [math.random]
        4 CALL                             R1 0 1
        5 GETIMPORT                        R2 K5 [math.random]
        7 CALL                             R2 0 1
        8 GETIMPORT                        R3 K5 [math.random]
       10 CALL                             R3 0 -1
       11 CALL                             R0 -1 -1
       12 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K4 [{"getTheme", "studioStyleGuideColor", "studioStyleGuideModifier"}]
        4 DUPTABLE                         R2 K6 [{"GetColor"}]
        5 DUPCLOSURE                       R3 K7 [PROTO_0]
        6 SETTABLEKS                       R3 R2 K5 ["GetColor"]
        8 SETTABLEKS                       R2 R1 K1 ["getTheme"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K8 ["createMockStudioStyleGuideColor"]
       13 CALL                             R2 0 1
       14 SETTABLEKS                       R2 R1 K2 ["studioStyleGuideColor"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K9 ["createMockStudioStyleGuideModifier"]
       19 CALL                             R2 0 1
       20 SETTABLEKS                       R2 R1 K3 ["studioStyleGuideModifier"]
       22 CALL                             R0 1 -1
       23 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_recalculateTheme"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K9 [{"_externalThemeGetter", "_isDarkThemeGetter", "_externalThemeChangedSignal", "_studioStyleGuideColor", "_studioStyleGuideModifier", "_externalThemeChangedConnection", "_values", "_UILibraryTheme", "_signal"}]
        1 GETTABLEKS                       R3 R0 K11 ["getTheme"]
        3 ORK                              R2 R3 K10 []
        4 SETTABLEKS                       R2 R1 K0 ["_externalThemeGetter"]
        6 GETTABLEKS                       R3 R0 K13 ["isDarkerTheme"]
        8 ORK                              R2 R3 K12 [False]
        9 SETTABLEKS                       R2 R1 K1 ["_isDarkThemeGetter"]
       11 GETTABLEKS                       R3 R0 K14 ["themeChanged"]
       13 ORK                              R2 R3 K10 []
       14 SETTABLEKS                       R2 R1 K2 ["_externalThemeChangedSignal"]
       16 GETTABLEKS                       R2 R0 K15 ["studioStyleGuideColor"]
       18 JUMPIF                           R2 ; [+2]
       19 GETIMPORT                        R2 K18 [Enum.StudioStyleGuideColor]
       21 SETTABLEKS                       R2 R1 K3 ["_studioStyleGuideColor"]
       23 GETTABLEKS                       R2 R0 K19 ["studioStyleGuideModifier"]
       25 JUMPIF                           R2 ; [+2]
       26 GETIMPORT                        R2 K21 [Enum.StudioStyleGuideModifier]
       28 SETTABLEKS                       R2 R1 K4 ["_studioStyleGuideModifier"]
       30 LOADNIL                          R2
       31 SETTABLEKS                       R2 R1 K5 ["_externalThemeChangedConnection"]
       33 NEWTABLE                         R2 0 0
       35 SETTABLEKS                       R2 R1 K6 ["_values"]
       37 NEWTABLE                         R2 0 0
       39 SETTABLEKS                       R2 R1 K7 ["_UILibraryTheme"]
       41 GETUPVAL                         R2 0
       42 CALL                             R2 0 1
       43 SETTABLEKS                       R2 R1 K8 ["_signal"]
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R3 R1 K6 ["_values"]
       48 LOADK                            R4 K22 ["theme"]
       49 CALL                             R2 2 1
       50 SETTABLEKS                       R2 R1 K23 ["values"]
       52 GETUPVAL                         R4 2
       53 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       55 MOVE                             R3 R1
       56 GETIMPORT                        R2 K25 [setmetatable]
       58 CALL                             R2 2 0
       59 GETTABLEKS                       R2 R1 K2 ["_externalThemeChangedSignal"]
       61 JUMPIFNOT                        R2 ; [+9]
       62 GETTABLEKS                       R2 R1 K2 ["_externalThemeChangedSignal"]
       64 NEWCLOSURE                       R4 P0
       65 CAPTURE                          VAL R1
       66 NAMECALL                         R2 R2 K26 ["Connect"]
       68 CALL                             R2 2 1
       69 SETTABLEKS                       R2 R1 K5 ["_externalThemeChangedConnection"]
       71 NAMECALL                         R2 R1 K27 ["_recalculateTheme"]
       73 CALL                             R2 1 0
       74 RETURN                           R1 1

PROTO_4:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["_signal"]
        3 GETVARARGS                       R3 -1
        4 NAMECALL                         R1 R1 K1 ["subscribe"]
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_externalThemeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_externalThemeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_externalThemeChangedConnection"]
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETTABLEKS                       R3 R0 K2 ["_values"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R0 K2 ["_values"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R3 R0 K2 ["_values"]
       14 LOADK                            R4 K3 ["theme"]
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R0 K4 ["values"]
       18 GETTABLEKS                       R2 R0 K5 ["_signal"]
       20 GETTABLEKS                       R4 R0 K4 ["values"]
       22 GETTABLEKS                       R5 R0 K6 ["_UILibraryTheme"]
       24 NAMECALL                         R2 R2 K7 ["fire"]
       26 CALL                             R2 3 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_externalThemeGetter"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["function"] ; [+4]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_isDarkThemeGetter"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["function"] ; [+7]
        9 MOVE                             R2 R1
       10 NAMECALL                         R3 R0 K4 ["_getExternalTheme"]
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 -1
       14 RETURN                           R2 -1
       15 JUMPIFNOT                        R1 ; [+2]
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 LOADB                            R2 0
       19 RETURN                           R2 1

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["GetColor"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["_getExternalTheme"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["_isDarkerTheme"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R0 K2 ["_studioStyleGuideColor"]
        8 GETTABLEKS                       R4 R0 K3 ["_studioStyleGuideModifier"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R1
       12 DUPTABLE                         R8 K14 [{"isDarkerTheme", "linkButton", "toolbox", "loading", "searchBar", "asset", "infoBanner", "tooltip", "sortComponent", "radioButton"}]
       13 SETTABLEKS                       R2 R8 K4 ["isDarkerTheme"]
       15 DUPTABLE                         R9 K16 [{"textColor"}]
       16 GETIMPORT                        R10 K19 [Color3.fromRGB]
       18 LOADN                            R11 0
       19 LOADN                            R12 162
       20 LOADN                            R13 255
       21 CALL                             R10 3 1
       22 SETTABLEKS                       R10 R9 K15 ["textColor"]
       24 SETTABLEKS                       R9 R8 K5 ["linkButton"]
       26 DUPTABLE                         R9 K21 [{"backgroundColor"}]
       27 MOVE                             R10 R5
       28 GETTABLEKS                       R11 R3 K22 ["MainBackground"]
       30 CALL                             R10 1 1
       31 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
       33 SETTABLEKS                       R9 R8 K6 ["toolbox"]
       35 DUPTABLE                         R9 K26 [{"text", "backgroundBar", "bar"}]
       36 MOVE                             R10 R5
       37 GETTABLEKS                       R11 R3 K27 ["MainText"]
       39 CALL                             R10 1 1
       40 SETTABLEKS                       R10 R9 K23 ["text"]
       42 MOVE                             R10 R5
       43 GETTABLEKS                       R11 R3 K28 ["Midlight"]
       45 CALL                             R10 1 1
       46 SETTABLEKS                       R10 R9 K24 ["backgroundBar"]
       48 MOVE                             R10 R5
       49 GETTABLEKS                       R11 R3 K29 ["CurrentMarker"]
       51 CALL                             R10 1 1
       52 SETTABLEKS                       R10 R9 K25 ["bar"]
       54 SETTABLEKS                       R9 R8 K7 ["loading"]
       56 DUPTABLE                         R9 K38 [{"backgroundColor", "liveBackgroundColor", "borderColor", "borderHoveredColor", "borderSelectedColor", "textColor", "placeholderTextColor", "divideLineColor", "searchButton", "clearButton"}]
       57 MOVE                             R10 R5
       58 GETTABLEKS                       R11 R3 K39 ["Dropdown"]
       60 CALL                             R10 1 1
       61 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
       63 MOVE                             R10 R5
       64 GETTABLEKS                       R11 R3 K40 ["InputFieldBackground"]
       66 CALL                             R10 1 1
       67 SETTABLEKS                       R10 R9 K30 ["liveBackgroundColor"]
       69 MOVE                             R10 R5
       70 GETTABLEKS                       R11 R3 K41 ["Border"]
       72 CALL                             R10 1 1
       73 SETTABLEKS                       R10 R9 K31 ["borderColor"]
       75 MOVE                             R10 R5
       76 GETTABLEKS                       R11 R3 K29 ["CurrentMarker"]
       78 CALL                             R10 1 1
       79 SETTABLEKS                       R10 R9 K32 ["borderHoveredColor"]
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R10 R10 K42 ["BLUE_PRIMARY"]
       84 SETTABLEKS                       R10 R9 K33 ["borderSelectedColor"]
       86 MOVE                             R10 R5
       87 GETTABLEKS                       R11 R3 K27 ["MainText"]
       89 CALL                             R10 1 1
       90 SETTABLEKS                       R10 R9 K15 ["textColor"]
       92 MOVE                             R10 R5
       93 GETTABLEKS                       R11 R3 K43 ["DimmedText"]
       95 CALL                             R10 1 1
       96 SETTABLEKS                       R10 R9 K34 ["placeholderTextColor"]
       98 MOVE                             R10 R5
       99 GETTABLEKS                       R11 R3 K41 ["Border"]
      101 CALL                             R10 1 1
      102 SETTABLEKS                       R10 R9 K35 ["divideLineColor"]
      104 DUPTABLE                         R10 K46 [{"imageColor", "imageSelectedColor"}]
      105 GETIMPORT                        R11 K19 [Color3.fromRGB]
      107 LOADN                            R12 184
      108 LOADN                            R13 184
      109 LOADN                            R14 184
      110 CALL                             R11 3 1
      111 SETTABLEKS                       R11 R10 K44 ["imageColor"]
      113 GETIMPORT                        R11 K19 [Color3.fromRGB]
      115 LOADN                            R12 0
      116 LOADN                            R13 162
      117 LOADN                            R14 255
      118 CALL                             R11 3 1
      119 SETTABLEKS                       R11 R10 K45 ["imageSelectedColor"]
      121 SETTABLEKS                       R10 R9 K36 ["searchButton"]
      123 DUPTABLE                         R10 K46 [{"imageColor", "imageSelectedColor"}]
      124 GETIMPORT                        R11 K19 [Color3.fromRGB]
      126 LOADN                            R12 184
      127 LOADN                            R13 184
      128 LOADN                            R14 184
      129 CALL                             R11 3 1
      130 SETTABLEKS                       R11 R10 K44 ["imageColor"]
      132 GETIMPORT                        R11 K19 [Color3.fromRGB]
      134 LOADN                            R12 0
      135 LOADN                            R13 162
      136 LOADN                            R14 255
      137 CALL                             R11 3 1
      138 SETTABLEKS                       R11 R10 K45 ["imageSelectedColor"]
      140 SETTABLEKS                       R10 R9 K37 ["clearButton"]
      142 SETTABLEKS                       R9 R8 K8 ["searchBar"]
      144 DUPTABLE                         R9 K49 [{"icon", "progressBarColor"}]
      145 DUPTABLE                         R10 K50 [{"borderColor"}]
      146 MOVE                             R11 R5
      147 GETTABLEKS                       R12 R3 K51 ["Item"]
      149 GETTABLEKS                       R13 R4 K52 ["Hover"]
      151 CALL                             R11 2 1
      152 SETTABLEKS                       R11 R10 K31 ["borderColor"]
      154 SETTABLEKS                       R10 R9 K47 ["icon"]
      156 GETUPVAL                         R10 0
      157 GETTABLEKS                       R10 R10 K42 ["BLUE_PRIMARY"]
      159 SETTABLEKS                       R10 R9 K48 ["progressBarColor"]
      161 SETTABLEKS                       R9 R8 K9 ["asset"]
      163 DUPTABLE                         R9 K53 [{"backgroundColor", "textColor"}]
      164 MOVE                             R10 R5
      165 GETTABLEKS                       R11 R3 K54 ["Titlebar"]
      167 CALL                             R10 1 1
      168 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
      170 MOVE                             R10 R5
      171 GETTABLEKS                       R11 R3 K55 ["SubText"]
      173 CALL                             R10 1 1
      174 SETTABLEKS                       R10 R9 K15 ["textColor"]
      176 SETTABLEKS                       R9 R8 K10 ["infoBanner"]
      178 DUPTABLE                         R9 K56 [{"backgroundColor", "borderColor", "textColor"}]
      179 MOVE                             R10 R5
      180 GETTABLEKS                       R11 R3 K22 ["MainBackground"]
      182 CALL                             R10 1 1
      183 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
      185 MOVE                             R10 R5
      186 GETTABLEKS                       R11 R3 K41 ["Border"]
      188 CALL                             R10 1 1
      189 SETTABLEKS                       R10 R9 K31 ["borderColor"]
      191 MOVE                             R10 R5
      192 GETTABLEKS                       R11 R3 K27 ["MainText"]
      194 CALL                             R10 1 1
      195 SETTABLEKS                       R10 R9 K15 ["textColor"]
      197 SETTABLEKS                       R9 R8 K11 ["tooltip"]
      199 DUPTABLE                         R9 K58 [{"labelTextColor"}]
      200 MOVE                             R10 R5
      201 GETTABLEKS                       R11 R3 K27 ["MainText"]
      203 CALL                             R10 1 1
      204 SETTABLEKS                       R10 R9 K57 ["labelTextColor"]
      206 SETTABLEKS                       R9 R8 K12 ["sortComponent"]
      208 DUPTABLE                         R9 K60 [{"textColor", "background"}]
      209 MOVE                             R10 R5
      210 GETTABLEKS                       R11 R3 K27 ["MainText"]
      212 CALL                             R10 1 1
      213 SETTABLEKS                       R10 R9 K15 ["textColor"]
      215 MOVE                             R10 R5
      216 GETTABLEKS                       R11 R3 K40 ["InputFieldBackground"]
      218 CALL                             R10 1 1
      219 SETTABLEKS                       R10 R9 K59 ["background"]
      221 SETTABLEKS                       R9 R8 K13 ["radioButton"]
      223 NAMECALL                         R6 R0 K61 ["_update"]
      225 CALL                             R6 2 0
      226 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R0 K7 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R3 K9 ["Colors"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R3 K10 ["createSignal"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R3 K11 ["wrapStrictTable"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R3 K12 ["Images"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R3 K13 ["Constants"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R3 K14 ["Test"]
       49 GETTABLEKS                       R10 R10 K15 ["TestHelpers"]
       51 CALL                             R9 1 1
       52 NEWTABLE                         R10 16 0
       54 SETTABLEKS                       R10 R10 K16 ["__index"]
       56 DUPCLOSURE                       R11 K17 [PROTO_1]
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R9
       59 SETTABLEKS                       R11 R10 K18 ["createDummyThemeManager"]
       61 DUPCLOSURE                       R11 K19 [PROTO_3]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R10
       65 SETTABLEKS                       R11 R10 K20 ["new"]
       67 DUPCLOSURE                       R11 K21 [PROTO_4]
       68 SETTABLEKS                       R11 R10 K22 ["subscribe"]
       70 DUPCLOSURE                       R11 K23 [PROTO_5]
       71 SETTABLEKS                       R11 R10 K24 ["destroy"]
       73 DUPCLOSURE                       R11 K25 [PROTO_6]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R6
       76 SETTABLEKS                       R11 R10 K26 ["_update"]
       78 DUPCLOSURE                       R11 K27 [PROTO_7]
       79 SETTABLEKS                       R11 R10 K28 ["_getExternalTheme"]
       81 DUPCLOSURE                       R11 K29 [PROTO_8]
       82 SETTABLEKS                       R11 R10 K30 ["_isDarkerTheme"]
       84 DUPCLOSURE                       R11 K31 [PROTO_10]
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R11 R10 K32 ["_recalculateTheme"]
       88 RETURN                           R10 1
