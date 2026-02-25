MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["LuauPolyfill"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["Object"]
       12 NEWTABLE                         R2 32 0
       14 GETIMPORT                        R4 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K7 ["clearLine"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R3 R4 K8 ["default"]
       23 SETTABLEKS                       R3 R2 K7 ["clearLine"]
       25 GETIMPORT                        R4 K1 [require]
       27 GETIMPORT                        R6 K3 [script]
       29 GETTABLEKS                       R5 R6 K9 ["createDirectory"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R3 R4 K8 ["default"]
       34 SETTABLEKS                       R3 R2 K9 ["createDirectory"]
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R5 K3 [script]
       40 GETTABLEKS                       R4 R5 K10 ["ErrorWithStack"]
       42 CALL                             R3 1 1
       43 GETTABLEKS                       R4 R3 K8 ["default"]
       45 SETTABLEKS                       R4 R2 K10 ["ErrorWithStack"]
       47 GETIMPORT                        R5 K1 [require]
       49 GETIMPORT                        R7 K3 [script]
       51 GETTABLEKS                       R6 R7 K11 ["installCommonGlobals"]
       53 CALL                             R5 1 1
       54 CALL                             R5 0 1
       55 GETTABLEKS                       R4 R5 K8 ["default"]
       57 SETTABLEKS                       R4 R2 K11 ["installCommonGlobals"]
       59 GETIMPORT                        R5 K1 [require]
       61 GETIMPORT                        R7 K3 [script]
       63 GETTABLEKS                       R6 R7 K12 ["isInteractive"]
       65 CALL                             R5 1 1
       66 GETTABLEKS                       R4 R5 K8 ["default"]
       68 SETTABLEKS                       R4 R2 K12 ["isInteractive"]
       70 GETIMPORT                        R5 K1 [require]
       72 GETIMPORT                        R7 K3 [script]
       74 GETTABLEKS                       R6 R7 K13 ["isPromise"]
       76 CALL                             R5 1 1
       77 GETTABLEKS                       R4 R5 K8 ["default"]
       79 SETTABLEKS                       R4 R2 K13 ["isPromise"]
       81 GETIMPORT                        R5 K1 [require]
       83 GETIMPORT                        R7 K3 [script]
       85 GETTABLEKS                       R6 R7 K14 ["setGlobal"]
       87 CALL                             R5 1 1
       88 GETTABLEKS                       R4 R5 K8 ["default"]
       90 SETTABLEKS                       R4 R2 K14 ["setGlobal"]
       92 GETIMPORT                        R5 K1 [require]
       94 GETIMPORT                        R7 K3 [script]
       96 GETTABLEKS                       R6 R7 K15 ["deepCyclicCopy"]
       98 CALL                             R5 1 1
       99 GETTABLEKS                       R4 R5 K8 ["default"]
      101 SETTABLEKS                       R4 R2 K15 ["deepCyclicCopy"]
      103 GETIMPORT                        R5 K1 [require]
      105 GETIMPORT                        R7 K3 [script]
      107 GETTABLEKS                       R6 R7 K16 ["convertDescriptorToString"]
      109 CALL                             R5 1 1
      110 GETTABLEKS                       R4 R5 K8 ["default"]
      112 SETTABLEKS                       R4 R2 K16 ["convertDescriptorToString"]
      114 GETIMPORT                        R4 K1 [require]
      116 GETIMPORT                        R6 K3 [script]
      118 GETTABLEKS                       R5 R6 K17 ["specialChars"]
      120 CALL                             R4 1 1
      121 GETTABLEKS                       R5 R1 K18 ["assign"]
      123 MOVE                             R6 R2
      124 MOVE                             R7 R4
      125 CALL                             R5 2 0
      126 SETTABLEKS                       R4 R2 K17 ["specialChars"]
      128 GETTABLEKS                       R5 R4 K19 ["ARROW"]
      130 SETTABLEKS                       R5 R2 K19 ["ARROW"]
      132 GETTABLEKS                       R5 R4 K20 ["ICONS"]
      134 SETTABLEKS                       R5 R2 K20 ["ICONS"]
      136 GETTABLEKS                       R5 R4 K21 ["CLEAR"]
      138 SETTABLEKS                       R5 R2 K21 ["CLEAR"]
      140 GETIMPORT                        R6 K1 [require]
      142 GETIMPORT                        R8 K3 [script]
      144 GETTABLEKS                       R7 R8 K22 ["testPathPatternToRegExp"]
      146 CALL                             R6 1 1
      147 GETTABLEKS                       R5 R6 K8 ["default"]
      149 SETTABLEKS                       R5 R2 K22 ["testPathPatternToRegExp"]
      151 GETIMPORT                        R6 K1 [require]
      153 GETIMPORT                        R8 K3 [script]
      155 GETTABLEKS                       R7 R8 K23 ["globsToMatcher"]
      157 CALL                             R6 1 1
      158 GETTABLEKS                       R5 R6 K8 ["default"]
      160 SETTABLEKS                       R5 R2 K23 ["globsToMatcher"]
      162 GETIMPORT                        R5 K1 [require]
      164 GETIMPORT                        R7 K3 [script]
      166 GETTABLEKS                       R6 R7 K24 ["preRunMessage"]
      168 CALL                             R5 1 1
      169 SETTABLEKS                       R5 R2 K24 ["preRunMessage"]
      171 GETTABLEKS                       R6 R5 K25 ["print"]
      173 SETTABLEKS                       R6 R2 K25 ["print"]
      175 GETTABLEKS                       R6 R5 K26 ["remove"]
      177 SETTABLEKS                       R6 R2 K26 ["remove"]
      179 GETIMPORT                        R7 K1 [require]
      181 GETIMPORT                        R9 K3 [script]
      183 GETTABLEKS                       R8 R9 K27 ["pluralize"]
      185 CALL                             R7 1 1
      186 GETTABLEKS                       R6 R7 K8 ["default"]
      188 SETTABLEKS                       R6 R2 K27 ["pluralize"]
      190 GETIMPORT                        R7 K1 [require]
      192 GETIMPORT                        R9 K3 [script]
      194 GETTABLEKS                       R8 R9 K28 ["formatTime"]
      196 CALL                             R7 1 1
      197 GETTABLEKS                       R6 R7 K8 ["default"]
      199 SETTABLEKS                       R6 R2 K28 ["formatTime"]
      201 RETURN                           R2 1
