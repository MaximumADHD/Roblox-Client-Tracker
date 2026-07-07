PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R3 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R3 K10 ["BasicPropertyView"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K7 ["Components"]
       24 GETTABLEKS                       R4 R4 K8 ["PropertyEntries"]
       26 GETTABLEKS                       R4 R4 K9 ["PropertyView"]
       28 GETTABLEKS                       R4 R4 K11 ["BooleanPropertyView"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K6 [require]
       33 GETTABLEKS                       R5 R0 K7 ["Components"]
       35 GETTABLEKS                       R5 R5 K8 ["PropertyEntries"]
       37 GETTABLEKS                       R5 R5 K9 ["PropertyView"]
       39 GETTABLEKS                       R5 R5 K12 ["CFramePropertyView"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K6 [require]
       44 GETTABLEKS                       R6 R0 K7 ["Components"]
       46 GETTABLEKS                       R6 R6 K8 ["PropertyEntries"]
       48 GETTABLEKS                       R6 R6 K9 ["PropertyView"]
       50 GETTABLEKS                       R6 R6 K13 ["CombinedColorPropertyView"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K6 [require]
       55 GETTABLEKS                       R7 R0 K7 ["Components"]
       57 GETTABLEKS                       R7 R7 K8 ["PropertyEntries"]
       59 GETTABLEKS                       R7 R7 K9 ["PropertyView"]
       61 GETTABLEKS                       R7 R7 K14 ["ContentPropertyView"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K6 [require]
       66 GETTABLEKS                       R8 R0 K7 ["Components"]
       68 GETTABLEKS                       R8 R8 K8 ["PropertyEntries"]
       70 GETTABLEKS                       R8 R8 K9 ["PropertyView"]
       72 GETTABLEKS                       R8 R8 K15 ["DynamicEnumPropertyView"]
       74 CALL                             R7 1 1
       75 GETIMPORT                        R8 K6 [require]
       77 GETTABLEKS                       R9 R0 K7 ["Components"]
       79 GETTABLEKS                       R9 R9 K8 ["PropertyEntries"]
       81 GETTABLEKS                       R9 R9 K9 ["PropertyView"]
       83 GETTABLEKS                       R9 R9 K16 ["EnumPropertyView"]
       85 CALL                             R8 1 1
       86 GETIMPORT                        R9 K6 [require]
       88 GETTABLEKS                       R10 R0 K7 ["Components"]
       90 GETTABLEKS                       R10 R10 K8 ["PropertyEntries"]
       92 GETTABLEKS                       R10 R10 K9 ["PropertyView"]
       94 GETTABLEKS                       R10 R10 K17 ["InstanceRefPropertyView"]
       96 CALL                             R9 1 1
       97 GETIMPORT                        R10 K6 [require]
       99 GETTABLEKS                       R11 R0 K7 ["Components"]
      101 GETTABLEKS                       R11 R11 K8 ["PropertyEntries"]
      103 GETTABLEKS                       R11 R11 K9 ["PropertyView"]
      105 GETTABLEKS                       R11 R11 K18 ["NumberPropertyView"]
      107 CALL                             R10 1 1
      108 GETIMPORT                        R11 K6 [require]
      110 GETTABLEKS                       R12 R0 K19 ["PropertyEditorTypes"]
      112 CALL                             R11 1 1
      113 GETIMPORT                        R12 K6 [require]
      115 GETTABLEKS                       R13 R0 K20 ["PropertyTypes"]
      117 CALL                             R12 1 1
      118 GETIMPORT                        R13 K6 [require]
      120 GETTABLEKS                       R14 R1 K21 ["React"]
      122 CALL                             R13 1 1
      123 GETIMPORT                        R14 K6 [require]
      125 GETTABLEKS                       R15 R0 K7 ["Components"]
      127 GETTABLEKS                       R15 R15 K8 ["PropertyEntries"]
      129 GETTABLEKS                       R15 R15 K9 ["PropertyView"]
      131 GETTABLEKS                       R15 R15 K22 ["StringPropertyView"]
      133 CALL                             R14 1 1
      134 GETIMPORT                        R15 K6 [require]
      136 GETTABLEKS                       R16 R0 K7 ["Components"]
      138 GETTABLEKS                       R16 R16 K8 ["PropertyEntries"]
      140 GETTABLEKS                       R16 R16 K9 ["PropertyView"]
      142 GETTABLEKS                       R16 R16 K23 ["Vector2PropertyView"]
      144 CALL                             R15 1 1
      145 GETIMPORT                        R16 K6 [require]
      147 GETTABLEKS                       R17 R0 K7 ["Components"]
      149 GETTABLEKS                       R17 R17 K8 ["PropertyEntries"]
      151 GETTABLEKS                       R17 R17 K9 ["PropertyView"]
      153 GETTABLEKS                       R17 R17 K24 ["Vector3PropertyView"]
      155 CALL                             R16 1 1
      156 DUPTABLE                         R17 K40 [{"string", "boolean", "Enum", "DynamicEnum", "int", "int64", "float", "double", "number", "Vector2", "Vector3", "CFrame", "CombinedColor", "InstanceRef", "Content"}]
      157 SETTABLEKS                       R14 R17 K25 ["string"]
      159 SETTABLEKS                       R3 R17 K26 ["boolean"]
      161 SETTABLEKS                       R8 R17 K27 ["Enum"]
      163 SETTABLEKS                       R7 R17 K28 ["DynamicEnum"]
      165 SETTABLEKS                       R10 R17 K29 ["int"]
      167 SETTABLEKS                       R10 R17 K30 ["int64"]
      169 SETTABLEKS                       R10 R17 K31 ["float"]
      171 SETTABLEKS                       R10 R17 K32 ["double"]
      173 SETTABLEKS                       R10 R17 K33 ["number"]
      175 SETTABLEKS                       R15 R17 K34 ["Vector2"]
      177 SETTABLEKS                       R16 R17 K35 ["Vector3"]
      179 SETTABLEKS                       R4 R17 K36 ["CFrame"]
      181 SETTABLEKS                       R5 R17 K37 ["CombinedColor"]
      183 SETTABLEKS                       R9 R17 K38 ["InstanceRef"]
      185 SETTABLEKS                       R6 R17 K39 ["Content"]
      187 DUPCLOSURE                       R18 K41 [PROTO_0]
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R2
      190 RETURN                           R18 1
