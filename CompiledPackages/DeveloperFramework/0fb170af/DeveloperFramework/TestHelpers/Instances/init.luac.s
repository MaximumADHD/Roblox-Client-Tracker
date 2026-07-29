MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["SharedFlags"]
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagDevFrameworkMemStorageServiceMocks"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K2 ["Parent"]
       20 GETTABLEKS                       R3 R3 K2 ["Parent"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["strict"]
       26 CALL                             R2 1 1
       27 MOVE                             R3 R2
       28 DUPTABLE                         R4 K28 [{"MockAnalyticsService", "MockAssetManagerService", "MockCalloutService", "MockChangeHistoryService", "MockCoreGui", "MockHttpService", "MockInsertService", "MockMarketplaceService", "MockMaterialGenerationService", "MockMaterialService", "MockMemStorageService", "MockMouse", "MockPlugin", "MockPluginToolbar", "MockPluginToolbarButton", "MockSelectionService", "MockStudioService", "MockToastNotificationService", "MockStudioDeviceEmulatorService"}]
       29 GETIMPORT                        R5 K4 [require]
       31 GETIMPORT                        R6 K1 [script]
       33 GETTABLEKS                       R6 R6 K9 ["MockAnalyticsService"]
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R4 K9 ["MockAnalyticsService"]
       38 GETIMPORT                        R5 K4 [require]
       40 GETIMPORT                        R6 K1 [script]
       42 GETTABLEKS                       R6 R6 K10 ["MockAssetManagerService"]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K10 ["MockAssetManagerService"]
       47 GETIMPORT                        R5 K4 [require]
       49 GETIMPORT                        R6 K1 [script]
       51 GETTABLEKS                       R6 R6 K11 ["MockCalloutService"]
       53 CALL                             R5 1 1
       54 SETTABLEKS                       R5 R4 K11 ["MockCalloutService"]
       56 GETIMPORT                        R5 K4 [require]
       58 GETIMPORT                        R6 K1 [script]
       60 GETTABLEKS                       R6 R6 K12 ["MockChangeHistoryService"]
       62 CALL                             R5 1 1
       63 SETTABLEKS                       R5 R4 K12 ["MockChangeHistoryService"]
       65 GETIMPORT                        R5 K4 [require]
       67 GETIMPORT                        R6 K1 [script]
       69 GETTABLEKS                       R6 R6 K13 ["MockCoreGui"]
       71 CALL                             R5 1 1
       72 SETTABLEKS                       R5 R4 K13 ["MockCoreGui"]
       74 GETIMPORT                        R5 K4 [require]
       76 GETIMPORT                        R6 K1 [script]
       78 GETTABLEKS                       R6 R6 K14 ["MockHttpService"]
       80 CALL                             R5 1 1
       81 SETTABLEKS                       R5 R4 K14 ["MockHttpService"]
       83 GETIMPORT                        R5 K4 [require]
       85 GETIMPORT                        R6 K1 [script]
       87 GETTABLEKS                       R6 R6 K15 ["MockInsertService"]
       89 CALL                             R5 1 1
       90 SETTABLEKS                       R5 R4 K15 ["MockInsertService"]
       92 GETIMPORT                        R5 K4 [require]
       94 GETIMPORT                        R6 K1 [script]
       96 GETTABLEKS                       R6 R6 K16 ["MockMarketplaceService"]
       98 CALL                             R5 1 1
       99 SETTABLEKS                       R5 R4 K16 ["MockMarketplaceService"]
      101 GETIMPORT                        R5 K4 [require]
      103 GETIMPORT                        R6 K1 [script]
      105 GETTABLEKS                       R6 R6 K17 ["MockMaterialGenerationService"]
      107 CALL                             R5 1 1
      108 SETTABLEKS                       R5 R4 K17 ["MockMaterialGenerationService"]
      110 GETIMPORT                        R5 K4 [require]
      112 GETIMPORT                        R6 K1 [script]
      114 GETTABLEKS                       R6 R6 K18 ["MockMaterialService"]
      116 CALL                             R5 1 1
      117 SETTABLEKS                       R5 R4 K18 ["MockMaterialService"]
      119 MOVE                             R6 R1
      120 CALL                             R6 0 1
      121 JUMPIFNOT                        R6 ; [+8]
      122 GETIMPORT                        R5 K4 [require]
      124 GETIMPORT                        R6 K1 [script]
      126 GETTABLEKS                       R6 R6 K19 ["MockMemStorageService"]
      128 CALL                             R5 1 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R5
      131 SETTABLEKS                       R5 R4 K19 ["MockMemStorageService"]
      133 GETIMPORT                        R5 K4 [require]
      135 GETIMPORT                        R6 K1 [script]
      137 GETTABLEKS                       R6 R6 K20 ["MockMouse"]
      139 CALL                             R5 1 1
      140 SETTABLEKS                       R5 R4 K20 ["MockMouse"]
      142 GETIMPORT                        R5 K4 [require]
      144 GETIMPORT                        R6 K1 [script]
      146 GETTABLEKS                       R6 R6 K21 ["MockPlugin"]
      148 CALL                             R5 1 1
      149 SETTABLEKS                       R5 R4 K21 ["MockPlugin"]
      151 GETIMPORT                        R5 K4 [require]
      153 GETIMPORT                        R6 K1 [script]
      155 GETTABLEKS                       R6 R6 K22 ["MockPluginToolbar"]
      157 CALL                             R5 1 1
      158 SETTABLEKS                       R5 R4 K22 ["MockPluginToolbar"]
      160 GETIMPORT                        R5 K4 [require]
      162 GETIMPORT                        R6 K1 [script]
      164 GETTABLEKS                       R6 R6 K23 ["MockPluginToolbarButton"]
      166 CALL                             R5 1 1
      167 SETTABLEKS                       R5 R4 K23 ["MockPluginToolbarButton"]
      169 GETIMPORT                        R5 K4 [require]
      171 GETIMPORT                        R6 K1 [script]
      173 GETTABLEKS                       R6 R6 K24 ["MockSelectionService"]
      175 CALL                             R5 1 1
      176 SETTABLEKS                       R5 R4 K24 ["MockSelectionService"]
      178 GETIMPORT                        R5 K4 [require]
      180 GETIMPORT                        R6 K1 [script]
      182 GETTABLEKS                       R6 R6 K25 ["MockStudioService"]
      184 CALL                             R5 1 1
      185 SETTABLEKS                       R5 R4 K25 ["MockStudioService"]
      187 GETIMPORT                        R5 K4 [require]
      189 GETIMPORT                        R6 K1 [script]
      191 GETTABLEKS                       R6 R6 K26 ["MockToastNotificationService"]
      193 CALL                             R5 1 1
      194 SETTABLEKS                       R5 R4 K26 ["MockToastNotificationService"]
      196 GETIMPORT                        R5 K4 [require]
      198 GETIMPORT                        R6 K1 [script]
      200 GETTABLEKS                       R6 R6 K27 ["MockStudioDeviceEmulatorService"]
      202 CALL                             R5 1 1
      203 SETTABLEKS                       R5 R4 K27 ["MockStudioDeviceEmulatorService"]
      205 CALL                             R3 1 -1
      206 RETURN                           R3 -1
