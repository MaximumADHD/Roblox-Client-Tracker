MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Object"]
       12 NEWTABLE                         R3 0 0
       14 GETIMPORT                        R4 K4 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K7 ["get-queries-for-element"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R4 R4 K8 ["getQueriesForElement"]
       23 GETIMPORT                        R5 K4 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R6 R6 K9 ["queries"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETIMPORT                        R8 K1 [script]
       34 GETTABLEKS                       R7 R8 K10 ["query-helpers"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R2 K11 ["assign"]
       39 MOVE                             R8 R3
       40 GETIMPORT                        R9 K4 [require]
       42 GETIMPORT                        R10 K1 [script]
       44 GETTABLEKS                       R10 R10 K9 ["queries"]
       46 CALL                             R9 1 -1
       47 CALL                             R7 -1 0
       48 GETTABLEKS                       R7 R2 K11 ["assign"]
       50 MOVE                             R8 R3
       51 GETIMPORT                        R9 K4 [require]
       53 GETIMPORT                        R11 K1 [script]
       55 GETTABLEKS                       R10 R11 K12 ["wait-for"]
       57 CALL                             R9 1 -1
       58 CALL                             R7 -1 0
       59 GETTABLEKS                       R7 R2 K11 ["assign"]
       61 MOVE                             R8 R3
       62 GETIMPORT                        R9 K4 [require]
       64 GETIMPORT                        R11 K1 [script]
       66 GETTABLEKS                       R10 R11 K13 ["wait-for-element-to-be-removed"]
       68 CALL                             R9 1 -1
       69 CALL                             R7 -1 0
       70 GETIMPORT                        R7 K4 [require]
       72 GETIMPORT                        R8 K1 [script]
       74 GETTABLEKS                       R8 R8 K14 ["matches"]
       76 CALL                             R7 1 1
       77 GETTABLEKS                       R7 R7 K15 ["getDefaultNormalizer"]
       79 SETTABLEKS                       R7 R3 K15 ["getDefaultNormalizer"]
       81 GETTABLEKS                       R7 R2 K11 ["assign"]
       83 MOVE                             R8 R3
       84 GETIMPORT                        R9 K4 [require]
       86 GETIMPORT                        R11 K1 [script]
       88 GETTABLEKS                       R10 R11 K16 ["get-node-text"]
       90 CALL                             R9 1 -1
       91 CALL                             R7 -1 0
       92 GETTABLEKS                       R7 R2 K11 ["assign"]
       94 MOVE                             R8 R3
       95 GETIMPORT                        R9 K4 [require]
       97 GETIMPORT                        R10 K1 [script]
       99 GETTABLEKS                       R10 R10 K17 ["events"]
      101 CALL                             R9 1 -1
      102 CALL                             R7 -1 0
      103 GETTABLEKS                       R7 R2 K11 ["assign"]
      105 MOVE                             R8 R3
      106 GETIMPORT                        R9 K4 [require]
      108 GETIMPORT                        R11 K1 [script]
      110 GETTABLEKS                       R10 R11 K7 ["get-queries-for-element"]
      112 CALL                             R9 1 -1
      113 CALL                             R7 -1 0
      114 GETTABLEKS                       R7 R2 K11 ["assign"]
      116 MOVE                             R8 R3
      117 GETIMPORT                        R9 K4 [require]
      119 GETIMPORT                        R10 K1 [script]
      121 GETTABLEKS                       R10 R10 K18 ["screen"]
      123 CALL                             R9 1 -1
      124 CALL                             R7 -1 0
      125 GETTABLEKS                       R7 R2 K11 ["assign"]
      127 MOVE                             R8 R3
      128 GETIMPORT                        R9 K4 [require]
      130 GETIMPORT                        R11 K1 [script]
      132 GETTABLEKS                       R10 R11 K10 ["query-helpers"]
      134 CALL                             R9 1 -1
      135 CALL                             R7 -1 0
      136 GETTABLEKS                       R7 R2 K11 ["assign"]
      138 MOVE                             R8 R3
      139 GETIMPORT                        R9 K4 [require]
      141 GETIMPORT                        R11 K1 [script]
      143 GETTABLEKS                       R10 R11 K19 ["pretty-dom"]
      145 CALL                             R9 1 -1
      146 CALL                             R7 -1 0
      147 GETIMPORT                        R7 K4 [require]
      149 GETIMPORT                        R8 K1 [script]
      151 GETTABLEKS                       R8 R8 K20 ["config"]
      153 CALL                             R7 1 1
      154 GETTABLEKS                       R8 R7 K21 ["configure"]
      156 SETTABLEKS                       R8 R3 K21 ["configure"]
      158 GETTABLEKS                       R8 R7 K22 ["getConfig"]
      160 SETTABLEKS                       R8 R3 K22 ["getConfig"]
      162 GETTABLEKS                       R8 R2 K11 ["assign"]
      164 MOVE                             R9 R3
      165 GETIMPORT                        R10 K4 [require]
      167 GETIMPORT                        R11 K1 [script]
      169 GETTABLEKS                       R11 R11 K23 ["suggestions"]
      171 CALL                             R10 1 -1
      172 CALL                             R8 -1 0
      173 SETTABLEKS                       R4 R3 K24 ["within"]
      175 SETTABLEKS                       R5 R3 K9 ["queries"]
      177 SETTABLEKS                       R6 R3 K25 ["queryHelpers"]
      179 GETIMPORT                        R8 K4 [require]
      181 GETIMPORT                        R9 K1 [script]
      183 GETTABLEKS                       R9 R9 K26 ["jsHelpers"]
      185 GETTABLEKS                       R9 R9 K27 ["document"]
      187 CALL                             R8 1 1
      188 SETTABLEKS                       R8 R3 K27 ["document"]
      190 GETIMPORT                        R8 K4 [require]
      192 GETIMPORT                        R9 K1 [script]
      194 GETTABLEKS                       R9 R9 K28 ["types"]
      196 CALL                             R8 1 1
      197 RETURN                           R3 1
