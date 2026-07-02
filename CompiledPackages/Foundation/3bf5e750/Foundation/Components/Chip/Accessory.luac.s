PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETIMPORT                        R2 K2 [table.clone]
        4 GETTABLEKS                       R3 R0 K3 ["config"]
        6 GETTABLEKS                       R3 R3 K4 ["props"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R0 K5 ["size"]
       11 SETTABLEKS                       R3 R2 K5 ["size"]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R1
       15 GETTABLEKS                       R5 R0 K6 ["chipBackgroundStyle"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K7 ["backplateStyle"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K8 ["createElement"]
       23 GETUPVAL                         R4 3
       24 MOVE                             R5 R2
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["config"]
        3 FASTCALL1                        TYPE R1 ; [+2]
        4 GETIMPORT                        R0 K2 [type]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["string"] ; [+8]
        9 DUPTABLE                         R0 K7 [{["iconName"], ["isCircular"] = False}]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["config"]
       13 SETTABLEKS                       R1 R0 K4 ["iconName"]
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["config"]
       19 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K1 ["config"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R1
       16 GETTABLEKS                       R5 R0 K2 ["size"]
       18 GETTABLEKS                       R6 R0 K3 ["isLeading"]
       20 LOADB                            R7 1
       21 GETTABLEKS                       R8 R2 K4 ["type"]
       23 JUMPIFEQKS                       R8 K5 ["AvatarGroup"] ; [+5]
       25 GETTABLEKS                       R7 R2 K6 ["isCircular"]
       27 JUMPIF                           R7 ; [+1]
       28 LOADB                            R7 0
       29 CALL                             R3 4 1
       30 LOADNIL                          R4
       31 GETTABLEKS                       R5 R2 K4 ["type"]
       33 JUMPIFNOTEQKS                    R5 K5 ["AvatarGroup"] ; [+9]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K7 ["createElement"]
       38 GETUPVAL                         R6 3
       39 MOVE                             R7 R0
       40 CALL                             R5 2 1
       41 MOVE                             R4 R5
       42 JUMP                             ; [+80]
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R6 R2 K8 ["iconName"]
       46 CALL                             R5 1 1
       47 JUMPIFNOT                        R5 ; [+54]
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K7 ["createElement"]
       51 GETUPVAL                         R6 5
       52 DUPTABLE                         R7 K12 [{"name", "variant", "size", "style"}]
       53 GETUPVAL                         R9 6
       54 GETTABLEKS                       R10 R2 K8 ["iconName"]
       56 CALL                             R9 1 1
       57 JUMPIFNOT                        R9 ; [+7]
       58 GETUPVAL                         R9 7
       59 GETTABLEKS                       R10 R2 K8 ["iconName"]
       61 GETTABLE                         R8 R9 R10
       62 GETTABLEKS                       R8 R8 K9 ["name"]
       64 JUMP                             ; [+2]
       65 GETTABLEKS                       R8 R2 K8 ["iconName"]
       67 SETTABLEKS                       R8 R7 K9 ["name"]
       69 GETUPVAL                         R9 6
       70 GETTABLEKS                       R10 R2 K8 ["iconName"]
       72 CALL                             R9 1 1
       73 JUMPIFNOT                        R9 ; [+7]
       74 GETUPVAL                         R9 7
       75 GETTABLEKS                       R10 R2 K8 ["iconName"]
       77 GETTABLE                         R8 R9 R10
       78 GETTABLEKS                       R8 R8 K10 ["variant"]
       80 JUMP                             ; [+2]
       81 GETTABLEKS                       R8 R2 K13 ["iconVariant"]
       83 SETTABLEKS                       R8 R7 K10 ["variant"]
       85 GETTABLEKS                       R8 R3 K14 ["accessory"]
       87 GETTABLEKS                       R8 R8 K15 ["Size"]
       89 GETTABLEKS                       R8 R8 K16 ["Y"]
       91 GETTABLEKS                       R8 R8 K17 ["Offset"]
       93 SETTABLEKS                       R8 R7 K2 ["size"]
       95 GETTABLEKS                       R8 R0 K18 ["contentStyle"]
       97 SETTABLEKS                       R8 R7 K11 ["style"]
       99 CALL                             R5 2 1
      100 MOVE                             R4 R5
      101 JUMP                             ; [+21]
      102 GETUPVAL                         R5 1
      103 GETTABLEKS                       R5 R5 K7 ["createElement"]
      105 GETUPVAL                         R6 8
      106 DUPTABLE                         R7 K21 [{"Image", "Size", "imageStyle"}]
      107 GETTABLEKS                       R8 R2 K8 ["iconName"]
      109 SETTABLEKS                       R8 R7 K19 ["Image"]
      111 GETTABLEKS                       R8 R3 K14 ["accessory"]
      113 GETTABLEKS                       R8 R8 K15 ["Size"]
      115 SETTABLEKS                       R8 R7 K15 ["Size"]
      117 GETTABLEKS                       R8 R0 K18 ["contentStyle"]
      119 SETTABLEKS                       R8 R7 K20 ["imageStyle"]
      121 CALL                             R5 2 1
      122 MOVE                             R4 R5
      123 GETUPVAL                         R5 1
      124 GETTABLEKS                       R5 R5 K7 ["createElement"]
      126 GETUPVAL                         R6 9
      127 DUPTABLE                         R7 K29 [{["tag"] = "auto-xy", ["padding"], ["onActivated"], ["isDisabled"], ["LayoutOrder"], ["testId"]}]
      128 GETTABLEKS                       R8 R3 K14 ["accessory"]
      130 GETTABLEKS                       R8 R8 K24 ["padding"]
      132 SETTABLEKS                       R8 R7 K24 ["padding"]
      134 GETTABLEKS                       R8 R2 K25 ["onActivated"]
      136 SETTABLEKS                       R8 R7 K25 ["onActivated"]
      138 GETTABLEKS                       R8 R0 K26 ["isDisabled"]
      140 SETTABLEKS                       R8 R7 K26 ["isDisabled"]
      142 GETTABLEKS                       R9 R0 K3 ["isLeading"]
      144 JUMPIFNOT                        R9 ; [+2]
      145 LOADN                            R8 1
      146 JUMP                             ; [+1]
      147 LOADN                            R8 3
      148 SETTABLEKS                       R8 R7 K27 ["LayoutOrder"]
      150 GETTABLEKS                       R8 R0 K28 ["testId"]
      152 SETTABLEKS                       R8 R7 K28 ["testId"]
      154 MOVE                             R8 R4
      155 CALL                             R5 3 -1
      156 RETURN                           R5 -1

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
       25 GETTABLEKS                       R6 R0 K11 ["Components"]
       27 GETTABLEKS                       R6 R6 K12 ["Icon"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Components"]
       34 GETTABLEKS                       R7 R7 K13 ["Image"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Components"]
       41 GETTABLEKS                       R8 R8 K14 ["View"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Utility"]
       48 GETTABLEKS                       R9 R9 K16 ["iconMigrationUtils"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R0 K15 ["Utility"]
       55 GETTABLEKS                       R10 R10 K17 ["useCumulativeBackground"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R11 R0 K18 ["Providers"]
       62 GETTABLEKS                       R11 R11 K19 ["Style"]
       64 GETTABLEKS                       R11 R11 K20 ["useTokens"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R8 K21 ["isMigrated"]
       69 GETTABLEKS                       R12 R8 K22 ["isBuilderOrMigratedIcon"]
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R14 R0 K11 ["Components"]
       75 GETTABLEKS                       R14 R14 K23 ["AvatarGroup"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R0 K24 ["Enums"]
       82 GETTABLEKS                       R15 R15 K25 ["AvatarGroupType"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETTABLEKS                       R16 R0 K18 ["Providers"]
       89 GETTABLEKS                       R16 R16 K19 ["Style"]
       91 GETTABLEKS                       R16 R16 K26 ["BackgroundStyleContext"]
       93 CALL                             R15 1 1
       94 GETTABLEKS                       R15 R15 K27 ["useBackgroundStyle"]
       96 GETIMPORT                        R16 K6 [require]
       98 GETTABLEKS                       R17 R0 K11 ["Components"]
      100 GETTABLEKS                       R17 R17 K28 ["Types"]
      102 CALL                             R16 1 1
      103 GETIMPORT                        R17 K6 [require]
      105 GETIMPORT                        R18 K1 [script]
      107 GETTABLEKS                       R18 R18 K4 ["Parent"]
      109 GETTABLEKS                       R18 R18 K29 ["useAccessoryVariants"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R19 R0 K24 ["Enums"]
      116 GETTABLEKS                       R19 R19 K30 ["ChipSize"]
      118 CALL                             R18 1 1
      119 DUPCLOSURE                       R19 K31 [PROTO_0]
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R13
      124 DUPCLOSURE                       R20 K32 [PROTO_2]
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R7
      135 GETTABLEKS                       R21 R2 K33 ["memo"]
      137 MOVE                             R22 R20
      138 CALL                             R21 1 -1
      139 RETURN                           R21 -1
