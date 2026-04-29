MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["Icon"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["IconVariant"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K6 ["Font"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["Migration"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R6 K3 [script]
       33 GETTABLEKS                       R5 R6 K8 ["builderIconPlatformUtils"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K9 ["getBuilderIconForKeycode"]
       38 GETTABLEKS                       R6 R4 K10 ["getBuilderIconForCurrentPlatform"]
       40 DUPTABLE                         R7 K11 [{"Icon", "IconVariant", "Font", "Migration", "getBuilderIconForKeycode", "getBuilderIconForCurrentPlatform"}]
       41 SETTABLEKS                       R0 R7 K4 ["Icon"]
       43 SETTABLEKS                       R1 R7 K5 ["IconVariant"]
       45 SETTABLEKS                       R2 R7 K6 ["Font"]
       47 SETTABLEKS                       R3 R7 K7 ["Migration"]
       49 SETTABLEKS                       R5 R7 K9 ["getBuilderIconForKeycode"]
       51 SETTABLEKS                       R6 R7 K10 ["getBuilderIconForCurrentPlatform"]
       53 RETURN                           R7 1
