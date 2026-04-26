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
       57 JUMPIFNOTEQ                      R6 R7 ; [+25]
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R6 R7 K10 ["createElement"]
       62 GETUPVAL                         R7 5
       63 DUPTABLE                         R8 K13 [{"userId", "backplateStyle", "size"}]
       64 GETTABLEKS                       R9 R2 K11 ["userId"]
       66 SETTABLEKS                       R9 R8 K11 ["userId"]
       68 GETTABLEKS                       R11 R1 K14 ["Color"]
       70 GETTABLEKS                       R10 R11 K15 ["Shift"]
       72 GETTABLEKS                       R9 R10 K16 ["Shift_200"]
       74 SETTABLEKS                       R9 R8 K12 ["backplateStyle"]
       76 GETTABLEKS                       R9 R0 K9 ["size"]
       78 SETTABLEKS                       R9 R8 K9 ["size"]
       80 CALL                             R6 2 1
       81 MOVE                             R5 R6
       82 JUMP                             ; [+78]
       83 GETUPVAL                         R6 3
       84 GETTABLEKS                       R7 R2 K6 ["iconName"]
       86 CALL                             R6 1 1
       87 JUMPIFNOT                        R6 ; [+50]
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R6 R7 K10 ["createElement"]
       91 GETUPVAL                         R7 6
       92 DUPTABLE                         R8 K19 [{"name", "variant", "size"}]
       93 GETUPVAL                         R10 7
       94 GETTABLEKS                       R11 R2 K6 ["iconName"]
       96 CALL                             R10 1 1
       97 JUMPIFNOT                        R10 ; [+7]
       98 GETUPVAL                         R11 8
       99 GETTABLEKS                       R12 R2 K6 ["iconName"]
      101 GETTABLE                         R10 R11 R12
      102 GETTABLEKS                       R9 R10 K17 ["name"]
      104 JUMP                             ; [+2]
      105 GETTABLEKS                       R9 R2 K6 ["iconName"]
      107 SETTABLEKS                       R9 R8 K17 ["name"]
      109 GETUPVAL                         R10 7
      110 GETTABLEKS                       R11 R2 K6 ["iconName"]
      112 CALL                             R10 1 1
      113 JUMPIFNOT                        R10 ; [+7]
      114 GETUPVAL                         R11 8
      115 GETTABLEKS                       R12 R2 K6 ["iconName"]
      117 GETTABLE                         R10 R11 R12
      118 GETTABLEKS                       R9 R10 K18 ["variant"]
      120 JUMP                             ; [+2]
      121 GETTABLEKS                       R9 R2 K20 ["iconVariant"]
      123 SETTABLEKS                       R9 R8 K18 ["variant"]
      125 GETTABLEKS                       R12 R4 K21 ["accessory"]
      127 GETTABLEKS                       R11 R12 K22 ["Size"]
      129 GETTABLEKS                       R10 R11 K23 ["Y"]
      131 GETTABLEKS                       R9 R10 K24 ["Offset"]
      133 SETTABLEKS                       R9 R8 K9 ["size"]
      135 CALL                             R6 2 1
      136 MOVE                             R5 R6
      137 JUMP                             ; [+23]
      138 GETUPVAL                         R7 1
      139 GETTABLEKS                       R6 R7 K10 ["createElement"]
      141 GETUPVAL                         R7 9
      142 DUPTABLE                         R8 K27 [{"Image", "Size", "cornerRadius"}]
      143 GETTABLEKS                       R9 R2 K6 ["iconName"]
      145 SETTABLEKS                       R9 R8 K25 ["Image"]
      147 GETTABLEKS                       R10 R4 K21 ["accessory"]
      149 GETTABLEKS                       R9 R10 K22 ["Size"]
      151 SETTABLEKS                       R9 R8 K22 ["Size"]
      153 GETTABLEKS                       R10 R4 K21 ["accessory"]
      155 GETTABLEKS                       R9 R10 K26 ["cornerRadius"]
      157 SETTABLEKS                       R9 R8 K26 ["cornerRadius"]
      159 CALL                             R6 2 1
      160 MOVE                             R5 R6
      161 GETUPVAL                         R7 1
      162 GETTABLEKS                       R6 R7 K10 ["createElement"]
      164 GETUPVAL                         R7 10
      165 DUPTABLE                         R8 K33 [{"Size", "tag", "stateLayer", "isDisabled", "LayoutOrder", "testId"}]
      166 GETTABLEKS                       R10 R4 K34 ["container"]
      168 GETTABLEKS                       R9 R10 K22 ["Size"]
      170 SETTABLEKS                       R9 R8 K22 ["Size"]
      172 LOADK                            R9 K35 ["align-x-center align-y-center"]
      173 SETTABLEKS                       R9 R8 K28 ["tag"]
      175 DUPTABLE                         R9 K37 [{"affordance"}]
      176 GETUPVAL                         R11 11
      177 GETTABLEKS                       R10 R11 K38 ["None"]
      179 SETTABLEKS                       R10 R9 K36 ["affordance"]
      181 SETTABLEKS                       R9 R8 K29 ["stateLayer"]
      183 GETTABLEKS                       R9 R0 K30 ["isDisabled"]
      185 SETTABLEKS                       R9 R8 K30 ["isDisabled"]
      187 GETTABLEKS                       R9 R0 K31 ["LayoutOrder"]
      189 SETTABLEKS                       R9 R8 K31 ["LayoutOrder"]
      191 GETTABLEKS                       R9 R0 K32 ["testId"]
      193 SETTABLEKS                       R9 R8 K32 ["testId"]
      195 MOVE                             R9 R5
      196 CALL                             R6 3 -1
      197 RETURN                           R6 -1

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
       93 GETTABLEKS                       R16 R17 K26 ["useListAccessoryVariants"]
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
