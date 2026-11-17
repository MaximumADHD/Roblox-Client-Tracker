MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ImageLocalizationFeatureEnabled"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["LocalizationToolsCloudTableContextLength"]
       11 LOADN                            R3 500
       12 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K6 ["LocalizationToolsCloudTableKeyLength"]
       18 LOADN                            R3 300
       19 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K7 ["LocalizationToolsCloudTableSourceLength"]
       25 LOADN                            R3 300
       26 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K8 ["LocalizationToolsCloudTableExampleLength"]
       32 LOADN                            R3 300
       33 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K9 ["LocalizationToolsCloudTableTranslationLength"]
       39 LOADN                            R3 300
       40 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K10 ["LocalizationToolsCloudTableLocaleLength"]
       46 LOADN                            R3 100
       47 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       49 CALL                             R0 3 0
       50 LOADNIL                          R0
       51 RETURN                           R0 1
