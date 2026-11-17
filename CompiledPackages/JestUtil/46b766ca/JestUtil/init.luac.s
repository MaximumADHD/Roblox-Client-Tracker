MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["LuauPolyfill"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["Object"]
       12 NEWTABLE                         R2 32 0
       14 GETIMPORT                        R3 K1 [require]
       16 GETIMPORT                        R4 K3 [script]
       18 GETTABLEKS                       R4 R4 K7 ["clearLine"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R3 R3 K8 ["default"]
       23 SETTABLEKS                       R3 R2 K7 ["clearLine"]
       25 GETIMPORT                        R3 K1 [require]
       27 GETIMPORT                        R4 K3 [script]
       29 GETTABLEKS                       R4 R4 K9 ["createDirectory"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R3 R3 K8 ["default"]
       34 SETTABLEKS                       R3 R2 K9 ["createDirectory"]
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R4 K3 [script]
       40 GETTABLEKS                       R4 R4 K10 ["ErrorWithStack"]
       42 CALL                             R3 1 1
       43 GETTABLEKS                       R4 R3 K8 ["default"]
       45 SETTABLEKS                       R4 R2 K10 ["ErrorWithStack"]
       47 GETIMPORT                        R4 K1 [require]
       49 GETIMPORT                        R5 K3 [script]
       51 GETTABLEKS                       R5 R5 K11 ["installCommonGlobals"]
       53 CALL                             R4 1 1
       54 CALL                             R4 0 1
       55 GETTABLEKS                       R4 R4 K8 ["default"]
       57 SETTABLEKS                       R4 R2 K11 ["installCommonGlobals"]
       59 GETIMPORT                        R4 K1 [require]
       61 GETIMPORT                        R5 K3 [script]
       63 GETTABLEKS                       R5 R5 K12 ["isInteractive"]
       65 CALL                             R4 1 1
       66 GETTABLEKS                       R4 R4 K8 ["default"]
       68 SETTABLEKS                       R4 R2 K12 ["isInteractive"]
       70 GETIMPORT                        R4 K1 [require]
       72 GETIMPORT                        R5 K3 [script]
       74 GETTABLEKS                       R5 R5 K13 ["isPromise"]
       76 CALL                             R4 1 1
       77 GETTABLEKS                       R4 R4 K8 ["default"]
       79 SETTABLEKS                       R4 R2 K13 ["isPromise"]
       81 GETIMPORT                        R4 K1 [require]
       83 GETIMPORT                        R5 K3 [script]
       85 GETTABLEKS                       R5 R5 K14 ["setGlobal"]
       87 CALL                             R4 1 1
       88 GETTABLEKS                       R4 R4 K8 ["default"]
       90 SETTABLEKS                       R4 R2 K14 ["setGlobal"]
       92 GETIMPORT                        R4 K1 [require]
       94 GETIMPORT                        R5 K3 [script]
       96 GETTABLEKS                       R5 R5 K15 ["deepCyclicCopy"]
       98 CALL                             R4 1 1
       99 GETTABLEKS                       R4 R4 K8 ["default"]
      101 SETTABLEKS                       R4 R2 K15 ["deepCyclicCopy"]
      103 GETIMPORT                        R4 K1 [require]
      105 GETIMPORT                        R5 K3 [script]
      107 GETTABLEKS                       R5 R5 K16 ["convertDescriptorToString"]
      109 CALL                             R4 1 1
      110 GETTABLEKS                       R4 R4 K8 ["default"]
      112 SETTABLEKS                       R4 R2 K16 ["convertDescriptorToString"]
      114 GETIMPORT                        R4 K1 [require]
      116 GETIMPORT                        R5 K3 [script]
      118 GETTABLEKS                       R5 R5 K17 ["specialChars"]
      120 CALL                             R4 1 1
      121 GETTABLEKS                       R5 R1 K18 ["assign"]
      123 MOVE                             R6 R2
      124 MOVE                             R7 R4
      125 CALL                             R5 2 0
      126 GETTABLEKS                       R5 R4 K19 ["ARROW"]
      128 SETTABLEKS                       R5 R2 K19 ["ARROW"]
      130 GETTABLEKS                       R5 R4 K20 ["ICONS"]
      132 SETTABLEKS                       R5 R2 K20 ["ICONS"]
      134 GETTABLEKS                       R5 R4 K21 ["CLEAR"]
      136 SETTABLEKS                       R5 R2 K21 ["CLEAR"]
      138 GETIMPORT                        R5 K1 [require]
      140 GETIMPORT                        R6 K3 [script]
      142 GETTABLEKS                       R6 R6 K22 ["globsToMatcher"]
      144 CALL                             R5 1 1
      145 GETTABLEKS                       R5 R5 K8 ["default"]
      147 SETTABLEKS                       R5 R2 K22 ["globsToMatcher"]
      149 GETIMPORT                        R5 K1 [require]
      151 GETIMPORT                        R6 K3 [script]
      153 GETTABLEKS                       R6 R6 K23 ["preRunMessage"]
      155 CALL                             R5 1 1
      156 GETTABLEKS                       R6 R1 K18 ["assign"]
      158 MOVE                             R7 R2
      159 MOVE                             R8 R5
      160 CALL                             R6 2 0
      161 GETTABLEKS                       R6 R5 K24 ["print"]
      163 SETTABLEKS                       R6 R2 K24 ["print"]
      165 GETTABLEKS                       R6 R5 K25 ["remove"]
      167 SETTABLEKS                       R6 R2 K25 ["remove"]
      169 GETIMPORT                        R6 K1 [require]
      171 GETIMPORT                        R7 K3 [script]
      173 GETTABLEKS                       R7 R7 K26 ["pluralize"]
      175 CALL                             R6 1 1
      176 GETTABLEKS                       R6 R6 K8 ["default"]
      178 SETTABLEKS                       R6 R2 K26 ["pluralize"]
      180 GETIMPORT                        R6 K1 [require]
      182 GETIMPORT                        R7 K3 [script]
      184 GETTABLEKS                       R7 R7 K27 ["formatTime"]
      186 CALL                             R6 1 1
      187 GETTABLEKS                       R6 R6 K8 ["default"]
      189 SETTABLEKS                       R6 R2 K27 ["formatTime"]
      191 RETURN                           R2 1
