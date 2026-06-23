MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R4 R0 K4 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["deepCopy"]
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Util"]
       34 GETTABLEKS                       R6 R6 K12 ["StyleModifier"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K2 ["UI"]
       41 GETTABLEKS                       R7 R7 K13 ["Components"]
       43 GETTABLEKS                       R7 R7 K14 ["UIFolderData"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R6 K15 ["RoundBox"]
       50 GETTABLEKS                       R8 R8 K16 ["style"]
       52 CALL                             R7 1 1
       53 DUPTABLE                         R8 K21 [{"Left", "Top", "Right", "Bottom"}]
       54 LOADN                            R9 10
       55 SETTABLEKS                       R9 R8 K17 ["Left"]
       57 LOADN                            R9 5
       58 SETTABLEKS                       R9 R8 K18 ["Top"]
       60 LOADN                            R9 10
       61 SETTABLEKS                       R9 R8 K19 ["Right"]
       63 LOADN                            R9 5
       64 SETTABLEKS                       R9 R8 K20 ["Bottom"]
       66 DUPTABLE                         R9 K21 [{"Left", "Top", "Right", "Bottom"}]
       67 LOADN                            R10 1
       68 SETTABLEKS                       R10 R9 K17 ["Left"]
       70 LOADN                            R10 0
       71 SETTABLEKS                       R10 R9 K18 ["Top"]
       73 LOADN                            R10 0
       74 SETTABLEKS                       R10 R9 K19 ["Right"]
       76 LOADN                            R10 0
       77 SETTABLEKS                       R10 R9 K20 ["Bottom"]
       79 MOVE                             R10 R4
       80 MOVE                             R11 R7
       81 CALL                             R10 1 1
       82 NEWTABLE                         R11 8 0
       84 GETTABLEKS                       R12 R1 K22 ["DimmedText"]
       86 SETTABLEKS                       R12 R11 K23 ["PlaceholderTextColor"]
       88 LOADB                            R12 0
       89 SETTABLEKS                       R12 R11 K24 ["useRoundBox"]
       91 SETTABLEKS                       R9 R11 K25 ["Padding"]
       93 NEWTABLE                         R12 4 0
       95 LOADB                            R13 1
       96 SETTABLEKS                       R13 R12 K24 ["useRoundBox"]
       98 SETTABLEKS                       R8 R12 K25 ["Padding"]
      100 SETTABLEKS                       R7 R12 K26 ["BackgroundStyle"]
      102 GETTABLEKS                       R13 R5 K27 ["Hover"]
      104 DUPTABLE                         R14 K28 [{"BackgroundStyle"}]
      105 GETTABLEKS                       R15 R3 K29 ["Dictionary"]
      107 GETTABLEKS                       R15 R15 K30 ["join"]
      109 MOVE                             R16 R10
      110 DUPTABLE                         R17 K32 [{"BorderColor"}]
      111 GETTABLEKS                       R18 R1 K33 ["DialogMainButton"]
      113 SETTABLEKS                       R18 R17 K31 ["BorderColor"]
      115 CALL                             R15 2 1
      116 SETTABLEKS                       R15 R14 K26 ["BackgroundStyle"]
      118 SETTABLE                         R14 R12 R13
      119 SETTABLEKS                       R12 R11 K34 ["&RoundedBorder"]
      121 NEWTABLE                         R12 4 0
      123 LOADB                            R13 1
      124 SETTABLEKS                       R13 R12 K24 ["useRoundBox"]
      126 SETTABLEKS                       R8 R12 K25 ["Padding"]
      128 GETTABLEKS                       R13 R3 K29 ["Dictionary"]
      130 GETTABLEKS                       R13 R13 K30 ["join"]
      132 MOVE                             R14 R10
      133 DUPTABLE                         R15 K36 [{"Color"}]
      134 GETTABLEKS                       R16 R1 K37 ["InputFieldBackground"]
      136 SETTABLEKS                       R16 R15 K35 ["Color"]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K26 ["BackgroundStyle"]
      141 GETTABLEKS                       R13 R5 K38 ["Selected"]
      143 DUPTABLE                         R14 K28 [{"BackgroundStyle"}]
      144 GETTABLEKS                       R15 R3 K29 ["Dictionary"]
      146 GETTABLEKS                       R15 R15 K30 ["join"]
      148 MOVE                             R16 R10
      149 DUPTABLE                         R17 K39 [{"Color", "BorderColor"}]
      150 GETTABLEKS                       R18 R1 K37 ["InputFieldBackground"]
      152 SETTABLEKS                       R18 R17 K35 ["Color"]
      154 GETTABLEKS                       R18 R1 K33 ["DialogMainButton"]
      156 SETTABLEKS                       R18 R17 K31 ["BorderColor"]
      158 CALL                             R15 2 1
      159 SETTABLEKS                       R15 R14 K26 ["BackgroundStyle"]
      161 SETTABLE                         R14 R12 R13
      162 SETTABLEKS                       R12 R11 K40 ["&FilledRoundedBorder"]
      164 DUPTABLE                         R12 K41 [{"useRoundBox", "Padding", "BackgroundStyle"}]
      165 LOADB                            R13 1
      166 SETTABLEKS                       R13 R12 K24 ["useRoundBox"]
      168 SETTABLEKS                       R8 R12 K25 ["Padding"]
      170 GETTABLEKS                       R13 R3 K29 ["Dictionary"]
      172 GETTABLEKS                       R13 R13 K30 ["join"]
      174 MOVE                             R14 R10
      175 DUPTABLE                         R15 K39 [{"Color", "BorderColor"}]
      176 GETTABLEKS                       R16 R1 K37 ["InputFieldBackground"]
      178 SETTABLEKS                       R16 R15 K35 ["Color"]
      180 GETTABLEKS                       R16 R1 K42 ["ErrorText"]
      182 SETTABLEKS                       R16 R15 K31 ["BorderColor"]
      184 CALL                             R13 2 1
      185 SETTABLEKS                       R13 R12 K26 ["BackgroundStyle"]
      187 SETTABLEKS                       R12 R11 K43 ["&FilledRoundedRedBorder"]
      189 RETURN                           R11 1
