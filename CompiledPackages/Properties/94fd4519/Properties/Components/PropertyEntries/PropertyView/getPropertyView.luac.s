PROTO_0:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIF                           R2 ; [+5]
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R3 R0
        8 JUMP                             ; [+2]
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R2 R3 R0
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R2 1
       13 GETUPVAL                         R3 2
       14 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R6 R0 K7 ["Components"]
       13 GETTABLEKS                       R5 R6 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R4 R5 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R4 K10 ["BasicPropertyView"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R7 R0 K7 ["Components"]
       24 GETTABLEKS                       R6 R7 K8 ["PropertyEntries"]
       26 GETTABLEKS                       R5 R6 K9 ["PropertyView"]
       28 GETTABLEKS                       R4 R5 K11 ["BooleanPropertyView"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K6 [require]
       33 GETTABLEKS                       R8 R0 K7 ["Components"]
       35 GETTABLEKS                       R7 R8 K8 ["PropertyEntries"]
       37 GETTABLEKS                       R6 R7 K9 ["PropertyView"]
       39 GETTABLEKS                       R5 R6 K12 ["CombinedColorPropertyView"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K6 [require]
       44 GETTABLEKS                       R9 R0 K7 ["Components"]
       46 GETTABLEKS                       R8 R9 K8 ["PropertyEntries"]
       48 GETTABLEKS                       R7 R8 K9 ["PropertyView"]
       50 GETTABLEKS                       R6 R7 K13 ["ContentPropertyView"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K6 [require]
       55 GETTABLEKS                       R10 R0 K7 ["Components"]
       57 GETTABLEKS                       R9 R10 K8 ["PropertyEntries"]
       59 GETTABLEKS                       R8 R9 K9 ["PropertyView"]
       61 GETTABLEKS                       R7 R8 K14 ["DynamicEnumPropertyView"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K6 [require]
       66 GETTABLEKS                       R11 R0 K7 ["Components"]
       68 GETTABLEKS                       R10 R11 K8 ["PropertyEntries"]
       70 GETTABLEKS                       R9 R10 K9 ["PropertyView"]
       72 GETTABLEKS                       R8 R9 K15 ["EnumPropertyView"]
       74 CALL                             R7 1 1
       75 GETIMPORT                        R8 K6 [require]
       77 GETTABLEKS                       R12 R0 K7 ["Components"]
       79 GETTABLEKS                       R11 R12 K8 ["PropertyEntries"]
       81 GETTABLEKS                       R10 R11 K9 ["PropertyView"]
       83 GETTABLEKS                       R9 R10 K16 ["InstanceRefPropertyView"]
       85 CALL                             R8 1 1
       86 GETIMPORT                        R9 K6 [require]
       88 GETTABLEKS                       R13 R0 K7 ["Components"]
       90 GETTABLEKS                       R12 R13 K8 ["PropertyEntries"]
       92 GETTABLEKS                       R11 R12 K9 ["PropertyView"]
       94 GETTABLEKS                       R10 R11 K17 ["NumberPropertyView"]
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
      114 GETTABLEKS                       R17 R0 K7 ["Components"]
      116 GETTABLEKS                       R16 R17 K8 ["PropertyEntries"]
      118 GETTABLEKS                       R15 R16 K9 ["PropertyView"]
      120 GETTABLEKS                       R14 R15 K21 ["StringPropertyView"]
      122 CALL                             R13 1 1
      123 GETIMPORT                        R14 K6 [require]
      125 GETTABLEKS                       R18 R0 K7 ["Components"]
      127 GETTABLEKS                       R17 R18 K8 ["PropertyEntries"]
      129 GETTABLEKS                       R16 R17 K9 ["PropertyView"]
      131 GETTABLEKS                       R15 R16 K22 ["Vector3PropertyView"]
      133 CALL                             R14 1 1
      134 DUPTABLE                         R15 K37 [{"int", "int64", "float", "double", "number", "string", "Vector3", "boolean", "bool", "InstanceRef", "Enum", "DynamicEnum", "CombinedColor", "Content"}]
      135 SETTABLEKS                       R9 R15 K23 ["int"]
      137 SETTABLEKS                       R9 R15 K24 ["int64"]
      139 SETTABLEKS                       R9 R15 K25 ["float"]
      141 SETTABLEKS                       R9 R15 K26 ["double"]
      143 SETTABLEKS                       R9 R15 K27 ["number"]
      145 SETTABLEKS                       R13 R15 K28 ["string"]
      147 SETTABLEKS                       R14 R15 K29 ["Vector3"]
      149 SETTABLEKS                       R3 R15 K30 ["boolean"]
      151 SETTABLEKS                       R3 R15 K31 ["bool"]
      153 SETTABLEKS                       R8 R15 K32 ["InstanceRef"]
      155 SETTABLEKS                       R7 R15 K33 ["Enum"]
      157 SETTABLEKS                       R6 R15 K34 ["DynamicEnum"]
      159 SETTABLEKS                       R4 R15 K35 ["CombinedColor"]
      161 SETTABLEKS                       R5 R15 K36 ["Content"]
      163 NEWTABLE                         R16 0 0
      165 DUPCLOSURE                       R17 K38 [PROTO_0]
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R2
      169 RETURN                           R17 1
