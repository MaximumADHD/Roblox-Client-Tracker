MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Components"]
        7 GETTABLEKS                       R1 R1 K5 ["Dialog"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Components"]
       16 GETTABLEKS                       R2 R2 K6 ["FoundationProviderAdapter"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K7 ["Types"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K1 [require]
       28 GETIMPORT                        R4 K3 [script]
       30 GETTABLEKS                       R4 R4 K8 ["SharedFlags"]
       32 GETTABLEKS                       R4 R4 K9 ["getFFlagStudioFoundationDialogComponent"]
       34 CALL                             R3 1 1
       35 DUPTABLE                         R4 K13 [{"Components", "Contexts", "SharedFlags", "Hooks", "Util"}]
       36 DUPTABLE                         R5 K14 [{"Dialog", "FoundationProviderAdapter"}]
       37 MOVE                             R7 R3
       38 CALL                             R7 0 1
       39 JUMPIFNOT                        R7 ; [+2]
       40 MOVE                             R6 R0
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 SETTABLEKS                       R6 R5 K5 ["Dialog"]
       45 SETTABLEKS                       R1 R5 K6 ["FoundationProviderAdapter"]
       47 SETTABLEKS                       R5 R4 K4 ["Components"]
       49 DUPTABLE                         R5 K20 [{"StudioThemeContextProvider", "ThemeContext", "Localization", "TelemetryServiceContext", "TooltipSettingsContext"}]
       50 GETIMPORT                        R6 K1 [require]
       52 GETIMPORT                        R7 K3 [script]
       54 GETTABLEKS                       R7 R7 K10 ["Contexts"]
       56 GETTABLEKS                       R7 R7 K15 ["StudioThemeContextProvider"]
       58 CALL                             R6 1 1
       59 SETTABLEKS                       R6 R5 K15 ["StudioThemeContextProvider"]
       61 GETIMPORT                        R6 K1 [require]
       63 GETIMPORT                        R7 K3 [script]
       65 GETTABLEKS                       R7 R7 K10 ["Contexts"]
       67 GETTABLEKS                       R7 R7 K16 ["ThemeContext"]
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R5 K16 ["ThemeContext"]
       72 GETIMPORT                        R6 K1 [require]
       74 GETIMPORT                        R7 K3 [script]
       76 GETTABLEKS                       R7 R7 K10 ["Contexts"]
       78 GETTABLEKS                       R7 R7 K17 ["Localization"]
       80 CALL                             R6 1 1
       81 SETTABLEKS                       R6 R5 K17 ["Localization"]
       83 MOVE                             R7 R3
       84 CALL                             R7 0 1
       85 JUMPIFNOT                        R7 ; [+10]
       86 GETIMPORT                        R6 K1 [require]
       88 GETIMPORT                        R7 K3 [script]
       90 GETTABLEKS                       R7 R7 K10 ["Contexts"]
       92 GETTABLEKS                       R7 R7 K18 ["TelemetryServiceContext"]
       94 CALL                             R6 1 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R6
       97 SETTABLEKS                       R6 R5 K18 ["TelemetryServiceContext"]
       99 GETIMPORT                        R6 K1 [require]
      101 GETIMPORT                        R7 K3 [script]
      103 GETTABLEKS                       R7 R7 K10 ["Contexts"]
      105 GETTABLEKS                       R7 R7 K19 ["TooltipSettingsContext"]
      107 CALL                             R6 1 1
      108 SETTABLEKS                       R6 R5 K19 ["TooltipSettingsContext"]
      110 SETTABLEKS                       R5 R4 K10 ["Contexts"]
      112 DUPTABLE                         R5 K22 [{"getFFlagStudioFoundationThemeContext", "getFFlagStudioFoundationDialogComponent"}]
      113 GETIMPORT                        R6 K1 [require]
      115 GETIMPORT                        R7 K3 [script]
      117 GETTABLEKS                       R7 R7 K8 ["SharedFlags"]
      119 GETTABLEKS                       R7 R7 K21 ["getFFlagStudioFoundationThemeContext"]
      121 CALL                             R6 1 1
      122 SETTABLEKS                       R6 R5 K21 ["getFFlagStudioFoundationThemeContext"]
      124 SETTABLEKS                       R3 R5 K9 ["getFFlagStudioFoundationDialogComponent"]
      126 SETTABLEKS                       R5 R4 K8 ["SharedFlags"]
      128 DUPTABLE                         R5 K27 [{"useWidgetRef", "useWidgets", "useThemeName", "usePluginSetting"}]
      129 GETIMPORT                        R6 K1 [require]
      131 GETIMPORT                        R7 K3 [script]
      133 GETTABLEKS                       R7 R7 K11 ["Hooks"]
      135 GETTABLEKS                       R7 R7 K23 ["useWidgetRef"]
      137 CALL                             R6 1 1
      138 SETTABLEKS                       R6 R5 K23 ["useWidgetRef"]
      140 GETIMPORT                        R6 K1 [require]
      142 GETIMPORT                        R7 K3 [script]
      144 GETTABLEKS                       R7 R7 K11 ["Hooks"]
      146 GETTABLEKS                       R7 R7 K24 ["useWidgets"]
      148 CALL                             R6 1 1
      149 SETTABLEKS                       R6 R5 K24 ["useWidgets"]
      151 GETIMPORT                        R6 K1 [require]
      153 GETIMPORT                        R7 K3 [script]
      155 GETTABLEKS                       R7 R7 K11 ["Hooks"]
      157 GETTABLEKS                       R7 R7 K25 ["useThemeName"]
      159 CALL                             R6 1 1
      160 SETTABLEKS                       R6 R5 K25 ["useThemeName"]
      162 GETIMPORT                        R6 K1 [require]
      164 GETIMPORT                        R7 K3 [script]
      166 GETTABLEKS                       R7 R7 K11 ["Hooks"]
      168 GETTABLEKS                       R7 R7 K26 ["usePluginSetting"]
      170 CALL                             R6 1 1
      171 SETTABLEKS                       R6 R5 K26 ["usePluginSetting"]
      173 SETTABLEKS                       R5 R4 K11 ["Hooks"]
      175 DUPTABLE                         R5 K33 [{"StudioUri", "createFoundationDesignBinding", "safeGetFastFlag", "isStyleSheetPolyfillOn", "uriToTestId"}]
      176 GETIMPORT                        R6 K1 [require]
      178 GETIMPORT                        R7 K3 [script]
      180 GETTABLEKS                       R7 R7 K12 ["Util"]
      182 GETTABLEKS                       R7 R7 K28 ["StudioUri"]
      184 CALL                             R6 1 1
      185 SETTABLEKS                       R6 R5 K28 ["StudioUri"]
      187 GETIMPORT                        R6 K1 [require]
      189 GETIMPORT                        R7 K3 [script]
      191 GETTABLEKS                       R7 R7 K12 ["Util"]
      193 GETTABLEKS                       R7 R7 K29 ["createFoundationDesignBinding"]
      195 CALL                             R6 1 1
      196 SETTABLEKS                       R6 R5 K29 ["createFoundationDesignBinding"]
      198 GETIMPORT                        R6 K1 [require]
      200 GETIMPORT                        R7 K3 [script]
      202 GETTABLEKS                       R7 R7 K12 ["Util"]
      204 GETTABLEKS                       R7 R7 K30 ["safeGetFastFlag"]
      206 CALL                             R6 1 1
      207 SETTABLEKS                       R6 R5 K30 ["safeGetFastFlag"]
      209 GETIMPORT                        R6 K1 [require]
      211 GETIMPORT                        R7 K3 [script]
      213 GETTABLEKS                       R7 R7 K12 ["Util"]
      215 GETTABLEKS                       R7 R7 K31 ["isStyleSheetPolyfillOn"]
      217 CALL                             R6 1 1
      218 SETTABLEKS                       R6 R5 K31 ["isStyleSheetPolyfillOn"]
      220 GETIMPORT                        R6 K1 [require]
      222 GETIMPORT                        R7 K3 [script]
      224 GETTABLEKS                       R7 R7 K12 ["Util"]
      226 GETTABLEKS                       R7 R7 K32 ["uriToTestId"]
      228 CALL                             R6 1 1
      229 SETTABLEKS                       R6 R5 K32 ["uriToTestId"]
      231 SETTABLEKS                       R5 R4 K12 ["Util"]
      233 RETURN                           R4 1
