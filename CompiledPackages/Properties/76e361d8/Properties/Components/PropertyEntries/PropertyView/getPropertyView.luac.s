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
       39 GETTABLEKS                       R5 R5 K12 ["CombinedColorPropertyView"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K6 [require]
       44 GETTABLEKS                       R6 R0 K7 ["Components"]
       46 GETTABLEKS                       R6 R6 K8 ["PropertyEntries"]
       48 GETTABLEKS                       R6 R6 K9 ["PropertyView"]
       50 GETTABLEKS                       R6 R6 K13 ["ContentPropertyView"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K6 [require]
       55 GETTABLEKS                       R7 R0 K7 ["Components"]
       57 GETTABLEKS                       R7 R7 K8 ["PropertyEntries"]
       59 GETTABLEKS                       R7 R7 K9 ["PropertyView"]
       61 GETTABLEKS                       R7 R7 K14 ["DynamicEnumPropertyView"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K6 [require]
       66 GETTABLEKS                       R8 R0 K7 ["Components"]
       68 GETTABLEKS                       R8 R8 K8 ["PropertyEntries"]
       70 GETTABLEKS                       R8 R8 K9 ["PropertyView"]
       72 GETTABLEKS                       R8 R8 K15 ["EnumPropertyView"]
       74 CALL                             R7 1 1
       75 GETIMPORT                        R8 K6 [require]
       77 GETTABLEKS                       R9 R0 K7 ["Components"]
       79 GETTABLEKS                       R9 R9 K8 ["PropertyEntries"]
       81 GETTABLEKS                       R9 R9 K9 ["PropertyView"]
       83 GETTABLEKS                       R9 R9 K16 ["InstanceRefPropertyView"]
       85 CALL                             R8 1 1
       86 GETIMPORT                        R9 K6 [require]
       88 GETTABLEKS                       R10 R0 K7 ["Components"]
       90 GETTABLEKS                       R10 R10 K8 ["PropertyEntries"]
       92 GETTABLEKS                       R10 R10 K9 ["PropertyView"]
       94 GETTABLEKS                       R10 R10 K17 ["NumberPropertyView"]
       96 CALL                             R9 1 1
       97 GETIMPORT                        R10 K6 [require]
       99 GETTABLEKS                       R11 R0 K18 ["PropertyEditorTypes"]
      101 CALL                             R10 1 1
      102 GETIMPORT                        R11 K6 [require]
      104 GETTABLEKS                       R12 R0 K19 ["PropertyTypes"]
      106 CALL                             R11 1 1
      107 GETIMPORT                        R12 K6 [require]
      109 GETTABLEKS                       R13 R1 K20 ["React"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K6 [require]
      114 GETTABLEKS                       R14 R0 K7 ["Components"]
      116 GETTABLEKS                       R14 R14 K8 ["PropertyEntries"]
      118 GETTABLEKS                       R14 R14 K9 ["PropertyView"]
      120 GETTABLEKS                       R14 R14 K21 ["StringPropertyView"]
      122 CALL                             R13 1 1
      123 GETIMPORT                        R14 K6 [require]
      125 GETTABLEKS                       R15 R0 K7 ["Components"]
      127 GETTABLEKS                       R15 R15 K8 ["PropertyEntries"]
      129 GETTABLEKS                       R15 R15 K9 ["PropertyView"]
      131 GETTABLEKS                       R15 R15 K22 ["Vector2PropertyView"]
      133 CALL                             R14 1 1
      134 GETIMPORT                        R15 K6 [require]
      136 GETTABLEKS                       R16 R0 K7 ["Components"]
      138 GETTABLEKS                       R16 R16 K8 ["PropertyEntries"]
      140 GETTABLEKS                       R16 R16 K9 ["PropertyView"]
      142 GETTABLEKS                       R16 R16 K23 ["Vector3PropertyView"]
      144 CALL                             R15 1 1
      145 DUPTABLE                         R16 K38 [{"string", "boolean", "Enum", "DynamicEnum", "int", "int64", "float", "double", "number", "Vector2", "Vector3", "CombinedColor", "InstanceRef", "Content"}]
      146 SETTABLEKS                       R13 R16 K24 ["string"]
      148 SETTABLEKS                       R3 R16 K25 ["boolean"]
      150 SETTABLEKS                       R7 R16 K26 ["Enum"]
      152 SETTABLEKS                       R6 R16 K27 ["DynamicEnum"]
      154 SETTABLEKS                       R9 R16 K28 ["int"]
      156 SETTABLEKS                       R9 R16 K29 ["int64"]
      158 SETTABLEKS                       R9 R16 K30 ["float"]
      160 SETTABLEKS                       R9 R16 K31 ["double"]
      162 SETTABLEKS                       R9 R16 K32 ["number"]
      164 SETTABLEKS                       R14 R16 K33 ["Vector2"]
      166 SETTABLEKS                       R15 R16 K34 ["Vector3"]
      168 SETTABLEKS                       R4 R16 K35 ["CombinedColor"]
      170 SETTABLEKS                       R8 R16 K36 ["InstanceRef"]
      172 SETTABLEKS                       R5 R16 K37 ["Content"]
      174 DUPCLOSURE                       R17 K39 [PROTO_0]
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R2
      177 RETURN                           R17 1
