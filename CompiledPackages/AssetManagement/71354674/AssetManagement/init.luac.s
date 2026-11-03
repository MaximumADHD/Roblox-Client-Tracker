MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["Constants"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K3 [require]
       10 GETTABLEKS                       R3 R0 K5 ["Enums"]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K3 [require]
       15 GETTABLEKS                       R4 R0 K6 ["Networking"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K3 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Types"]
       22 CALL                             R4 1 1
       23 DUPTABLE                         R5 K11 [{"Constants", "Enums", "Flags", "Components", "Networking", "Types", "Utils"}]
       24 SETTABLEKS                       R1 R5 K4 ["Constants"]
       26 SETTABLEKS                       R2 R5 K5 ["Enums"]
       28 NEWTABLE                         R6 0 0
       30 SETTABLEKS                       R6 R5 K8 ["Flags"]
       32 DUPTABLE                         R6 K13 [{"SearchableMenu"}]
       33 GETIMPORT                        R7 K3 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R8 R8 K12 ["SearchableMenu"]
       39 CALL                             R7 1 1
       40 SETTABLEKS                       R7 R6 K12 ["SearchableMenu"]
       42 SETTABLEKS                       R6 R5 K9 ["Components"]
       44 SETTABLEKS                       R3 R5 K6 ["Networking"]
       46 SETTABLEKS                       R4 R5 K7 ["Types"]
       48 DUPTABLE                         R6 K26 [{"convertTableToCsv", "createAssetUrl", "createFolderUid", "createScopeUid", "deepCopy", "deepFreeze", "escapeRichText", "formatDateTime", "hasMatchingTerm", "naturalCompare", "parseIsoToUnixMillis", "reportInBrowser"}]
       49 GETIMPORT                        R7 K3 [require]
       51 GETTABLEKS                       R8 R0 K10 ["Utils"]
       53 GETTABLEKS                       R8 R8 K14 ["convertTableToCsv"]
       55 CALL                             R7 1 1
       56 SETTABLEKS                       R7 R6 K14 ["convertTableToCsv"]
       58 GETIMPORT                        R7 K3 [require]
       60 GETTABLEKS                       R8 R0 K10 ["Utils"]
       62 GETTABLEKS                       R8 R8 K15 ["createAssetUrl"]
       64 CALL                             R7 1 1
       65 SETTABLEKS                       R7 R6 K15 ["createAssetUrl"]
       67 GETIMPORT                        R7 K3 [require]
       69 GETTABLEKS                       R8 R0 K10 ["Utils"]
       71 GETTABLEKS                       R8 R8 K16 ["createFolderUid"]
       73 CALL                             R7 1 1
       74 SETTABLEKS                       R7 R6 K16 ["createFolderUid"]
       76 GETIMPORT                        R7 K3 [require]
       78 GETTABLEKS                       R8 R0 K10 ["Utils"]
       80 GETTABLEKS                       R8 R8 K17 ["createScopeUid"]
       82 CALL                             R7 1 1
       83 SETTABLEKS                       R7 R6 K17 ["createScopeUid"]
       85 GETIMPORT                        R7 K3 [require]
       87 GETTABLEKS                       R8 R0 K10 ["Utils"]
       89 GETTABLEKS                       R8 R8 K18 ["deepCopy"]
       91 CALL                             R7 1 1
       92 SETTABLEKS                       R7 R6 K18 ["deepCopy"]
       94 GETIMPORT                        R7 K3 [require]
       96 GETTABLEKS                       R8 R0 K10 ["Utils"]
       98 GETTABLEKS                       R8 R8 K19 ["deepFreeze"]
      100 CALL                             R7 1 1
      101 SETTABLEKS                       R7 R6 K19 ["deepFreeze"]
      103 GETIMPORT                        R7 K3 [require]
      105 GETTABLEKS                       R8 R0 K10 ["Utils"]
      107 GETTABLEKS                       R8 R8 K20 ["escapeRichText"]
      109 CALL                             R7 1 1
      110 SETTABLEKS                       R7 R6 K20 ["escapeRichText"]
      112 GETIMPORT                        R7 K3 [require]
      114 GETTABLEKS                       R8 R0 K10 ["Utils"]
      116 GETTABLEKS                       R8 R8 K21 ["formatDateTime"]
      118 CALL                             R7 1 1
      119 SETTABLEKS                       R7 R6 K21 ["formatDateTime"]
      121 GETIMPORT                        R7 K3 [require]
      123 GETTABLEKS                       R8 R0 K10 ["Utils"]
      125 GETTABLEKS                       R8 R8 K22 ["hasMatchingTerm"]
      127 CALL                             R7 1 1
      128 SETTABLEKS                       R7 R6 K22 ["hasMatchingTerm"]
      130 GETIMPORT                        R7 K3 [require]
      132 GETTABLEKS                       R8 R0 K10 ["Utils"]
      134 GETTABLEKS                       R8 R8 K23 ["naturalCompare"]
      136 CALL                             R7 1 1
      137 SETTABLEKS                       R7 R6 K23 ["naturalCompare"]
      139 GETIMPORT                        R7 K3 [require]
      141 GETTABLEKS                       R8 R0 K10 ["Utils"]
      143 GETTABLEKS                       R8 R8 K24 ["parseIsoToUnixMillis"]
      145 CALL                             R7 1 1
      146 SETTABLEKS                       R7 R6 K24 ["parseIsoToUnixMillis"]
      148 GETIMPORT                        R7 K3 [require]
      150 GETTABLEKS                       R8 R0 K10 ["Utils"]
      152 GETTABLEKS                       R8 R8 K25 ["reportInBrowser"]
      154 CALL                             R7 1 1
      155 SETTABLEKS                       R7 R6 K25 ["reportInBrowser"]
      157 SETTABLEKS                       R6 R5 K10 ["Utils"]
      159 RETURN                           R5 1
