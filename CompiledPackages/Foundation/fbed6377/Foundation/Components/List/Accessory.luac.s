PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["config"]
        3 FASTCALL1                        TYPE R1 ; [+2]
        4 GETIMPORT                        R0 K2 [type]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["string"] ; [+8]
        9 DUPTABLE                         R0 K5 [{"iconName"}]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["config"]
       13 SETTABLEKS                       R1 R0 K4 ["iconName"]
       15 RETURN                           R0 1
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R0 R1 K0 ["config"]
       19 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K1 ["config"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETTABLEKS                       R4 R2 K2 ["type"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K3 ["Avatar"]
       19 JUMPIFNOTEQ                      R4 R5 ; [+5]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K3 ["Avatar"]
       24 JUMP                             ; [+20]
       25 GETTABLEKS                       R5 R0 K1 ["config"]
       27 FASTCALL1                        TYPE R5 ; [+2]
       28 GETIMPORT                        R4 K4 [type]
       30 CALL                             R4 1 1
       31 JUMPIFEQKS                       R4 K5 ["string"] ; [+6]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R5 R2 K6 ["iconName"]
       36 CALL                             R4 1 1
       37 JUMPIFNOT                        R4 ; [+4]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R3 R4 K7 ["Icon"]
       41 JUMP                             ; [+3]
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R3 R4 K8 ["Media"]
       45 GETUPVAL                         R4 4
       46 MOVE                             R5 R1
       47 GETTABLEKS                       R6 R0 K9 ["size"]
       49 MOVE                             R7 R3
       50 CALL                             R4 3 1
       51 LOADNIL                          R5
       52 GETTABLEKS                       R6 R2 K2 ["type"]
       54 GETUPVAL                         R8 2
       55 GETTABLEKS                       R7 R8 K3 ["Avatar"]
       57 JUMPIFNOTEQ                      R6 R7 ; [+17]
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R6 R7 K10 ["createElement"]
       62 GETUPVAL                         R7 5
       63 DUPTABLE                         R8 K12 [{"userId", "size"}]
       64 GETTABLEKS                       R9 R2 K11 ["userId"]
       66 SETTABLEKS                       R9 R8 K11 ["userId"]
       68 GETTABLEKS                       R9 R0 K9 ["size"]
       70 SETTABLEKS                       R9 R8 K9 ["size"]
       72 CALL                             R6 2 1
       73 MOVE                             R5 R6
       74 JUMP                             ; [+78]
       75 GETUPVAL                         R6 3
       76 GETTABLEKS                       R7 R2 K6 ["iconName"]
       78 CALL                             R6 1 1
       79 JUMPIFNOT                        R6 ; [+50]
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R6 R7 K10 ["createElement"]
       83 GETUPVAL                         R7 6
       84 DUPTABLE                         R8 K15 [{"name", "variant", "size"}]
       85 GETUPVAL                         R10 7
       86 GETTABLEKS                       R11 R2 K6 ["iconName"]
       88 CALL                             R10 1 1
       89 JUMPIFNOT                        R10 ; [+7]
       90 GETUPVAL                         R11 8
       91 GETTABLEKS                       R12 R2 K6 ["iconName"]
       93 GETTABLE                         R10 R11 R12
       94 GETTABLEKS                       R9 R10 K13 ["name"]
       96 JUMP                             ; [+2]
       97 GETTABLEKS                       R9 R2 K6 ["iconName"]
       99 SETTABLEKS                       R9 R8 K13 ["name"]
      101 GETUPVAL                         R10 7
      102 GETTABLEKS                       R11 R2 K6 ["iconName"]
      104 CALL                             R10 1 1
      105 JUMPIFNOT                        R10 ; [+7]
      106 GETUPVAL                         R11 8
      107 GETTABLEKS                       R12 R2 K6 ["iconName"]
      109 GETTABLE                         R10 R11 R12
      110 GETTABLEKS                       R9 R10 K14 ["variant"]
      112 JUMP                             ; [+2]
      113 GETTABLEKS                       R9 R2 K16 ["iconVariant"]
      115 SETTABLEKS                       R9 R8 K14 ["variant"]
      117 GETTABLEKS                       R12 R4 K17 ["accessory"]
      119 GETTABLEKS                       R11 R12 K18 ["Size"]
      121 GETTABLEKS                       R10 R11 K19 ["Y"]
      123 GETTABLEKS                       R9 R10 K20 ["Offset"]
      125 SETTABLEKS                       R9 R8 K9 ["size"]
      127 CALL                             R6 2 1
      128 MOVE                             R5 R6
      129 JUMP                             ; [+23]
      130 GETUPVAL                         R7 1
      131 GETTABLEKS                       R6 R7 K10 ["createElement"]
      133 GETUPVAL                         R7 9
      134 DUPTABLE                         R8 K23 [{"Image", "Size", "cornerRadius"}]
      135 GETTABLEKS                       R9 R2 K6 ["iconName"]
      137 SETTABLEKS                       R9 R8 K21 ["Image"]
      139 GETTABLEKS                       R10 R4 K17 ["accessory"]
      141 GETTABLEKS                       R9 R10 K18 ["Size"]
      143 SETTABLEKS                       R9 R8 K18 ["Size"]
      145 GETTABLEKS                       R10 R4 K17 ["accessory"]
      147 GETTABLEKS                       R9 R10 K22 ["cornerRadius"]
      149 SETTABLEKS                       R9 R8 K22 ["cornerRadius"]
      151 CALL                             R6 2 1
      152 MOVE                             R5 R6
      153 GETUPVAL                         R7 1
      154 GETTABLEKS                       R6 R7 K10 ["createElement"]
      156 GETUPVAL                         R7 10
      157 DUPTABLE                         R8 K29 [{"Size", "tag", "stateLayer", "isDisabled", "LayoutOrder", "testId"}]
      158 GETTABLEKS                       R10 R4 K30 ["container"]
      160 GETTABLEKS                       R9 R10 K18 ["Size"]
      162 SETTABLEKS                       R9 R8 K18 ["Size"]
      164 LOADK                            R9 K31 ["align-x-center align-y-center"]
      165 SETTABLEKS                       R9 R8 K24 ["tag"]
      167 DUPTABLE                         R9 K33 [{"affordance"}]
      168 GETUPVAL                         R11 11
      169 GETTABLEKS                       R10 R11 K34 ["None"]
      171 SETTABLEKS                       R10 R9 K32 ["affordance"]
      173 SETTABLEKS                       R9 R8 K25 ["stateLayer"]
      175 GETTABLEKS                       R9 R0 K26 ["isDisabled"]
      177 SETTABLEKS                       R9 R8 K26 ["isDisabled"]
      179 GETTABLEKS                       R9 R0 K27 ["LayoutOrder"]
      181 SETTABLEKS                       R9 R8 K27 ["LayoutOrder"]
      183 GETTABLEKS                       R9 R0 K28 ["testId"]
      185 SETTABLEKS                       R9 R8 K28 ["testId"]
      187 MOVE                             R9 R5
      188 CALL                             R6 3 -1
      189 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R3 K10 ["Migration"]
       21 GETTABLEKS                       R4 R5 K9 ["uiblox"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R7 R0 K11 ["Components"]
       27 GETTABLEKS                       R6 R7 K12 ["Icon"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R8 R0 K11 ["Components"]
       34 GETTABLEKS                       R7 R8 K13 ["Image"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R9 R0 K11 ["Components"]
       41 GETTABLEKS                       R8 R9 K14 ["View"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R10 R0 K15 ["Utility"]
       48 GETTABLEKS                       R9 R10 K16 ["iconMigrationUtils"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R12 R0 K17 ["Providers"]
       55 GETTABLEKS                       R11 R12 K18 ["Style"]
       57 GETTABLEKS                       R10 R11 K19 ["useTokens"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R8 K20 ["isMigrated"]
       62 GETTABLEKS                       R11 R8 K21 ["isBuilderOrMigratedIcon"]
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R15 R1 K2 ["Foundation"]
       68 GETTABLEKS                       R14 R15 K22 ["Enums"]
       70 GETTABLEKS                       R13 R14 K23 ["StateLayerAffordance"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETTABLEKS                       R15 R0 K22 ["Enums"]
       77 GETTABLEKS                       R14 R15 K24 ["AccessoryType"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R16 R0 K11 ["Components"]
       84 GETTABLEKS                       R15 R16 K25 ["Avatar"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETIMPORT                        R18 K1 [script]
       91 GETTABLEKS                       R17 R18 K4 ["Parent"]
       93 GETTABLEKS                       R16 R17 K26 ["useAccessoryVariants"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K6 [require]
       98 GETTABLEKS                       R18 R0 K22 ["Enums"]
      100 GETTABLEKS                       R17 R18 K27 ["InputSize"]
      102 CALL                             R16 1 1
      103 DUPCLOSURE                       R17 K28 [PROTO_1]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R12
      116 GETTABLEKS                       R18 R2 K29 ["memo"]
      118 MOVE                             R19 R17
      119 CALL                             R18 1 -1
      120 RETURN                           R18 -1
