MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Array"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["AssertionError"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["Error"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["Object"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["Promise"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["Set"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["Symbol"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R8 K3 [script]
       54 GETTABLEKS                       R8 R8 K11 ["Timers"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R9 K3 [script]
       61 GETTABLEKS                       R9 R9 K12 ["WeakMap"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R10 K3 [script]
       68 GETTABLEKS                       R10 R10 K13 ["Map"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K1 [require]
       73 GETIMPORT                        R11 K3 [script]
       75 GETTABLEKS                       R11 R11 K13 ["Map"]
       77 GETTABLEKS                       R11 R11 K14 ["coerceToMap"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K1 [require]
       82 GETIMPORT                        R12 K3 [script]
       84 GETTABLEKS                       R12 R12 K13 ["Map"]
       86 GETTABLEKS                       R12 R12 K15 ["coerceToTable"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K1 [require]
       91 GETIMPORT                        R13 K3 [script]
       93 GETTABLEKS                       R13 R13 K16 ["types"]
       95 CALL                             R12 1 1
       96 DUPTABLE                         R13 K29 [{"Array", "AssertionError", "Boolean", "console", "Error", "extends", "instanceof", "Math", "Number", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "String", "Symbol", "setTimeout", "clearTimeout", "setInterval", "clearInterval", "util"}]
       97 SETTABLEKS                       R0 R13 K4 ["Array"]
       99 SETTABLEKS                       R1 R13 K5 ["AssertionError"]
      101 GETIMPORT                        R14 K1 [require]
      103 GETIMPORT                        R15 K3 [script]
      105 GETTABLEKS                       R15 R15 K17 ["Boolean"]
      107 CALL                             R14 1 1
      108 SETTABLEKS                       R14 R13 K17 ["Boolean"]
      110 GETIMPORT                        R14 K1 [require]
      112 GETIMPORT                        R15 K3 [script]
      114 GETTABLEKS                       R15 R15 K18 ["console"]
      116 CALL                             R14 1 1
      117 SETTABLEKS                       R14 R13 K18 ["console"]
      119 SETTABLEKS                       R2 R13 K6 ["Error"]
      121 GETIMPORT                        R14 K1 [require]
      123 GETIMPORT                        R15 K3 [script]
      125 GETTABLEKS                       R15 R15 K19 ["extends"]
      127 CALL                             R14 1 1
      128 SETTABLEKS                       R14 R13 K19 ["extends"]
      130 GETIMPORT                        R14 K1 [require]
      132 GETIMPORT                        R15 K3 [script]
      134 GETTABLEKS                       R15 R15 K20 ["instanceof"]
      136 CALL                             R14 1 1
      137 SETTABLEKS                       R14 R13 K20 ["instanceof"]
      139 GETIMPORT                        R14 K1 [require]
      141 GETIMPORT                        R15 K3 [script]
      143 GETTABLEKS                       R15 R15 K21 ["Math"]
      145 CALL                             R14 1 1
      146 SETTABLEKS                       R14 R13 K21 ["Math"]
      148 GETIMPORT                        R14 K1 [require]
      150 GETIMPORT                        R15 K3 [script]
      152 GETTABLEKS                       R15 R15 K22 ["Number"]
      154 CALL                             R14 1 1
      155 SETTABLEKS                       R14 R13 K22 ["Number"]
      157 SETTABLEKS                       R3 R13 K7 ["Object"]
      159 SETTABLEKS                       R9 R13 K13 ["Map"]
      161 SETTABLEKS                       R10 R13 K14 ["coerceToMap"]
      163 SETTABLEKS                       R11 R13 K15 ["coerceToTable"]
      165 SETTABLEKS                       R5 R13 K9 ["Set"]
      167 SETTABLEKS                       R8 R13 K12 ["WeakMap"]
      169 GETIMPORT                        R14 K1 [require]
      171 GETIMPORT                        R15 K3 [script]
      173 GETTABLEKS                       R15 R15 K23 ["String"]
      175 CALL                             R14 1 1
      176 SETTABLEKS                       R14 R13 K23 ["String"]
      178 SETTABLEKS                       R6 R13 K10 ["Symbol"]
      180 GETTABLEKS                       R14 R7 K24 ["setTimeout"]
      182 SETTABLEKS                       R14 R13 K24 ["setTimeout"]
      184 GETTABLEKS                       R14 R7 K25 ["clearTimeout"]
      186 SETTABLEKS                       R14 R13 K25 ["clearTimeout"]
      188 GETTABLEKS                       R14 R7 K26 ["setInterval"]
      190 SETTABLEKS                       R14 R13 K26 ["setInterval"]
      192 GETTABLEKS                       R14 R7 K27 ["clearInterval"]
      194 SETTABLEKS                       R14 R13 K27 ["clearInterval"]
      196 GETIMPORT                        R14 K1 [require]
      198 GETIMPORT                        R15 K3 [script]
      200 GETTABLEKS                       R15 R15 K28 ["util"]
      202 CALL                             R14 1 1
      203 SETTABLEKS                       R14 R13 K28 ["util"]
      205 RETURN                           R13 1
