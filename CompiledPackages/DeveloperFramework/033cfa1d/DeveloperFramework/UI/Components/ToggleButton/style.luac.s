MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["join"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K9 ["Style"]
       22 GETTABLEKS                       R4 R4 K10 ["StyleKey"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Util"]
       29 GETTABLEKS                       R5 R5 K12 ["StyleModifier"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K2 ["UI"]
       36 GETTABLEKS                       R6 R6 K13 ["Components"]
       38 GETTABLEKS                       R6 R6 K14 ["Image"]
       40 CALL                             R5 1 1
       41 NEWTABLE                         R6 8 0
       43 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       45 LOADN                            R8 40
       46 LOADN                            R9 24
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K18 ["Size"]
       50 SETTABLEKS                       R5 R6 K19 ["Background"]
       52 DUPTABLE                         R7 K20 [{"Image"}]
       53 GETTABLEKS                       R8 R3 K21 ["ToggleOffImage"]
       55 SETTABLEKS                       R8 R7 K14 ["Image"]
       57 SETTABLEKS                       R7 R6 K22 ["BackgroundStyle"]
       59 GETTABLEKS                       R7 R4 K23 ["Selected"]
       61 DUPTABLE                         R8 K24 [{"BackgroundStyle"}]
       62 DUPTABLE                         R9 K20 [{"Image"}]
       63 GETTABLEKS                       R10 R3 K25 ["ToggleOnImage"]
       65 SETTABLEKS                       R10 R9 K14 ["Image"]
       67 SETTABLEKS                       R9 R8 K22 ["BackgroundStyle"]
       69 SETTABLE                         R8 R6 R7
       70 GETTABLEKS                       R7 R4 K26 ["Disabled"]
       72 DUPTABLE                         R8 K24 [{"BackgroundStyle"}]
       73 DUPTABLE                         R9 K20 [{"Image"}]
       74 GETTABLEKS                       R10 R3 K27 ["ToggleDisabledImage"]
       76 SETTABLEKS                       R10 R9 K14 ["Image"]
       78 SETTABLEKS                       R9 R8 K22 ["BackgroundStyle"]
       80 SETTABLE                         R8 R6 R7
       81 GETTABLEKS                       R7 R4 K28 ["DisabledAndSelected"]
       83 DUPTABLE                         R8 K24 [{"BackgroundStyle"}]
       84 DUPTABLE                         R9 K20 [{"Image"}]
       85 GETTABLEKS                       R10 R3 K29 ["ToggleDisabledAndSelectedImage"]
       87 SETTABLEKS                       R10 R9 K14 ["Image"]
       89 SETTABLEKS                       R9 R8 K22 ["BackgroundStyle"]
       91 SETTABLE                         R8 R6 R7
       92 GETIMPORT                        R7 K31 [UDim2.new]
       94 LOADN                            R8 0
       95 LOADN                            R9 16
       96 LOADN                            R10 0
       97 LOADN                            R11 16
       98 CALL                             R7 4 1
       99 NEWTABLE                         R8 8 0
      101 SETTABLEKS                       R5 R8 K19 ["Background"]
      103 DUPTABLE                         R9 K32 [{"Image", "Size"}]
      104 GETTABLEKS                       R10 R3 K33 ["CheckboxUncheckedImage"]
      106 SETTABLEKS                       R10 R9 K14 ["Image"]
      108 SETTABLEKS                       R7 R9 K18 ["Size"]
      110 SETTABLEKS                       R9 R8 K22 ["BackgroundStyle"]
      112 GETTABLEKS                       R9 R4 K23 ["Selected"]
      114 DUPTABLE                         R10 K24 [{"BackgroundStyle"}]
      115 DUPTABLE                         R11 K32 [{"Image", "Size"}]
      116 GETTABLEKS                       R12 R3 K34 ["CheckboxCheckedImage"]
      118 SETTABLEKS                       R12 R11 K14 ["Image"]
      120 SETTABLEKS                       R7 R11 K18 ["Size"]
      122 SETTABLEKS                       R11 R10 K22 ["BackgroundStyle"]
      124 SETTABLE                         R10 R8 R9
      125 GETTABLEKS                       R9 R4 K35 ["Indeterminate"]
      127 DUPTABLE                         R10 K24 [{"BackgroundStyle"}]
      128 DUPTABLE                         R11 K32 [{"Image", "Size"}]
      129 GETTABLEKS                       R12 R3 K36 ["CheckboxIndeterminateImage"]
      131 SETTABLEKS                       R12 R11 K14 ["Image"]
      133 SETTABLEKS                       R7 R11 K18 ["Size"]
      135 SETTABLEKS                       R11 R10 K22 ["BackgroundStyle"]
      137 SETTABLE                         R10 R8 R9
      138 GETTABLEKS                       R9 R4 K26 ["Disabled"]
      140 DUPTABLE                         R10 K24 [{"BackgroundStyle"}]
      141 DUPTABLE                         R11 K32 [{"Image", "Size"}]
      142 GETTABLEKS                       R12 R3 K37 ["CheckboxDisabledImage"]
      144 SETTABLEKS                       R12 R11 K14 ["Image"]
      146 SETTABLEKS                       R7 R11 K18 ["Size"]
      148 SETTABLEKS                       R11 R10 K22 ["BackgroundStyle"]
      150 SETTABLE                         R10 R8 R9
      151 GETIMPORT                        R9 K31 [UDim2.new]
      153 LOADN                            R10 0
      154 LOADN                            R11 16
      155 LOADN                            R12 0
      156 LOADN                            R13 16
      157 CALL                             R9 4 1
      158 NEWTABLE                         R10 4 0
      160 SETTABLEKS                       R5 R10 K19 ["Background"]
      162 DUPTABLE                         R11 K32 [{"Image", "Size"}]
      163 GETTABLEKS                       R12 R3 K38 ["EyeIconOffImage"]
      165 SETTABLEKS                       R12 R11 K14 ["Image"]
      167 SETTABLEKS                       R9 R11 K18 ["Size"]
      169 SETTABLEKS                       R11 R10 K22 ["BackgroundStyle"]
      171 GETTABLEKS                       R11 R4 K23 ["Selected"]
      173 DUPTABLE                         R12 K24 [{"BackgroundStyle"}]
      174 DUPTABLE                         R13 K32 [{"Image", "Size"}]
      175 GETTABLEKS                       R14 R3 K39 ["EyeIconOnImage"]
      177 SETTABLEKS                       R14 R13 K14 ["Image"]
      179 SETTABLEKS                       R9 R13 K18 ["Size"]
      181 SETTABLEKS                       R13 R12 K22 ["BackgroundStyle"]
      183 SETTABLE                         R12 R10 R11
      184 MOVE                             R11 R2
      185 MOVE                             R12 R6
      186 NEWTABLE                         R13 2 0
      188 SETTABLEKS                       R8 R13 K40 ["&Checkbox"]
      190 SETTABLEKS                       R10 R13 K41 ["&EyeIcon"]
      192 CALL                             R11 2 -1
      193 RETURN                           R11 -1
