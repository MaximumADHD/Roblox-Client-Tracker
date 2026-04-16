PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R3 R0 K1 ["setStyleSheetRef"]
        7 JUMPIFNOT                        R3 ; [+10]
        8 GETTABLEKS                       R4 R0 K1 ["setStyleSheetRef"]
       10 GETTABLEKS                       R3 R4 K2 ["current"]
       12 JUMPIFEQ                         R3 R2 ; [+5]
       14 GETTABLEKS                       R3 R0 K1 ["setStyleSheetRef"]
       16 SETTABLEKS                       R2 R3 K2 ["current"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K3 ["createElement"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K4 ["Provider"]
       24 DUPTABLE                         R5 K6 [{"value"}]
       25 MOVE                             R6 R1
       26 JUMPIF                           R6 ; [+3]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R6 R7 K7 ["None"]
       30 SETTABLEKS                       R6 R5 K5 ["value"]
       32 GETTABLEKS                       R6 R0 K8 ["children"]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["device"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["theme"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["scale"]
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 ORK                              R0 R1 K0 [0]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"theme", "device", "scale"}]
        2 GETTABLEKS                       R3 R0 K0 ["theme"]
        4 SETTABLEKS                       R3 R2 K0 ["theme"]
        6 GETTABLEKS                       R3 R0 K1 ["device"]
        8 SETTABLEKS                       R3 R2 K1 ["device"]
       10 GETTABLEKS                       R3 R0 K2 ["scale"]
       12 SETTABLEKS                       R3 R2 K2 ["scale"]
       14 GETUPVAL                         R3 1
       15 CALL                             R1 2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K4 ["FoundationUseStyleSheetRegistry"]
       19 JUMPIF                           R3 ; [+6]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K5 ["useRef"]
       23 LOADNIL                          R3
       24 CALL                             R2 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R2
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K4 ["FoundationUseStyleSheetRegistry"]
       32 JUMPIF                           R5 ; [+4]
       33 GETUPVAL                         R5 4
       34 CALL                             R5 0 2
       35 MOVE                             R3 R5
       36 MOVE                             R4 R6
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R5 R6 K6 ["useVariantsState"]
       40 CALL                             R5 0 1
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R1
       47 NEWTABLE                         R8 0 3
       49 GETTABLEKS                       R9 R1 K1 ["device"]
       51 GETTABLEKS                       R10 R1 K0 ["theme"]
       53 GETTABLEKS                       R11 R1 K2 ["scale"]
       55 SETLIST                          R8 R9 3 [1]
       57 CALL                             R6 2 1
       58 GETUPVAL                         R7 7
       59 CALL                             R7 0 1
       60 GETTABLEKS                       R8 R7 K8 ["preferredTextSize"]
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R9 R10 K7 ["useMemo"]
       65 DUPCLOSURE                       R10 K9 [PROTO_2]
       66 CAPTURE                          UPVAL U8
       67 NEWTABLE                         R11 0 1
       69 MOVE                             R12 R8
       70 SETLIST                          R11 R12 1 [1]
       72 CALL                             R9 2 1
       73 LOADNIL                          R10
       74 LOADNIL                          R11
       75 GETUPVAL                         R13 2
       76 GETTABLEKS                       R12 R13 K4 ["FoundationUseStyleSheetRegistry"]
       78 JUMPIFNOT                        R12 ; [+10]
       79 GETUPVAL                         R12 9
       80 GETTABLEKS                       R13 R1 K0 ["theme"]
       82 GETTABLEKS                       R14 R1 K1 ["device"]
       84 GETTABLEKS                       R15 R1 K2 ["scale"]
       86 CALL                             R12 3 2
       87 MOVE                             R10 R12
       88 MOVE                             R11 R13
       89 GETUPVAL                         R13 3
       90 GETTABLEKS                       R12 R13 K10 ["createElement"]
       92 GETUPVAL                         R14 10
       93 GETTABLEKS                       R13 R14 K11 ["Provider"]
       95 DUPTABLE                         R14 K13 [{"value"}]
       96 SETTABLEKS                       R6 R14 K12 ["value"]
       98 DUPTABLE                         R15 K15 [{"TextSizeOffsetContext"}]
       99 GETUPVAL                         R17 3
      100 GETTABLEKS                       R16 R17 K10 ["createElement"]
      102 GETUPVAL                         R18 11
      103 GETTABLEKS                       R17 R18 K11 ["Provider"]
      105 DUPTABLE                         R18 K13 [{"value"}]
      106 SETTABLEKS                       R9 R18 K12 ["value"]
      108 DUPTABLE                         R19 K17 [{"VariantsContext"}]
      109 GETUPVAL                         R21 3
      110 GETTABLEKS                       R20 R21 K10 ["createElement"]
      112 GETUPVAL                         R22 5
      113 GETTABLEKS                       R21 R22 K11 ["Provider"]
      115 DUPTABLE                         R22 K13 [{"value"}]
      116 SETTABLEKS                       R5 R22 K12 ["value"]
      118 DUPTABLE                         R23 K20 [{"TagsContext", "StyleSheet"}]
      119 GETUPVAL                         R25 3
      120 GETTABLEKS                       R24 R25 K10 ["createElement"]
      122 GETUPVAL                         R26 12
      123 GETTABLEKS                       R25 R26 K11 ["Provider"]
      125 DUPTABLE                         R26 K13 [{"value"}]
      126 GETUPVAL                         R29 2
      127 GETTABLEKS                       R28 R29 K4 ["FoundationUseStyleSheetRegistry"]
      129 JUMPIFNOT                        R28 ; [+2]
      130 MOVE                             R27 R11
      131 JUMP                             ; [+1]
      132 MOVE                             R27 R4
      133 SETTABLEKS                       R27 R26 K12 ["value"]
      135 GETUPVAL                         R29 2
      136 GETTABLEKS                       R28 R29 K4 ["FoundationUseStyleSheetRegistry"]
      138 JUMPIFNOT                        R28 ; [+13]
      139 GETUPVAL                         R28 3
      140 GETTABLEKS                       R27 R28 K10 ["createElement"]
      142 GETUPVAL                         R29 13
      143 GETTABLEKS                       R28 R29 K11 ["Provider"]
      145 DUPTABLE                         R29 K13 [{"value"}]
      146 SETTABLEKS                       R10 R29 K12 ["value"]
      148 GETTABLEKS                       R30 R0 K21 ["children"]
      150 CALL                             R27 3 1
      151 JUMP                             ; [+11]
      152 GETUPVAL                         R28 3
      153 GETTABLEKS                       R27 R28 K10 ["createElement"]
      155 GETGLOBAL                        R28 K22 ["StyleSheetContextWrapper"]
      157 DUPTABLE                         R29 K24 [{"setStyleSheetRef"}]
      158 SETTABLEKS                       R2 R29 K23 ["setStyleSheetRef"]
      160 GETTABLEKS                       R30 R0 K21 ["children"]
      162 CALL                             R27 3 1
      163 CALL                             R24 3 1
      164 SETTABLEKS                       R24 R23 K18 ["TagsContext"]
      166 GETUPVAL                         R26 2
      167 GETTABLEKS                       R25 R26 K4 ["FoundationUseStyleSheetRegistry"]
      169 JUMPIFNOT                        R25 ; [+9]
      170 GETUPVAL                         R25 3
      171 GETTABLEKS                       R24 R25 K10 ["createElement"]
      173 LOADK                            R25 K25 ["StyleLink"]
      174 DUPTABLE                         R26 K26 [{"StyleSheet"}]
      175 SETTABLEKS                       R10 R26 K19 ["StyleSheet"]
      177 CALL                             R24 2 1
      178 JUMP                             ; [+26]
      179 GETUPVAL                         R25 3
      180 GETTABLEKS                       R24 R25 K10 ["createElement"]
      182 GETUPVAL                         R25 14
      183 DUPTABLE                         R26 K29 [{"theme", "device", "scale", "tags", "derives", "setStyleSheetRef"}]
      184 GETTABLEKS                       R27 R1 K0 ["theme"]
      186 SETTABLEKS                       R27 R26 K0 ["theme"]
      188 GETTABLEKS                       R27 R1 K1 ["device"]
      190 SETTABLEKS                       R27 R26 K1 ["device"]
      192 GETTABLEKS                       R27 R1 K2 ["scale"]
      194 SETTABLEKS                       R27 R26 K2 ["scale"]
      196 SETTABLEKS                       R3 R26 K27 ["tags"]
      198 GETTABLEKS                       R27 R0 K28 ["derives"]
      200 SETTABLEKS                       R27 R26 K28 ["derives"]
      202 SETTABLEKS                       R2 R26 K23 ["setStyleSheetRef"]
      204 CALL                             R24 2 1
      205 SETTABLEKS                       R24 R23 K19 ["StyleSheet"]
      207 CALL                             R20 3 1
      208 SETTABLEKS                       R20 R19 K16 ["VariantsContext"]
      210 CALL                             R16 3 1
      211 SETTABLEKS                       R16 R15 K14 ["TextSizeOffsetContext"]
      213 CALL                             R12 3 -1
      214 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["Foundation"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K2 ["Parent"]
       13 GETIMPORT                        R3 K6 [require]
       15 GETTABLEKS                       R4 R2 K7 ["Dash"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R2 K8 ["React"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R7 R1 K9 ["Enums"]
       27 GETTABLEKS                       R6 R7 K10 ["Device"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R8 R1 K11 ["Utility"]
       34 GETTABLEKS                       R7 R8 K12 ["Flags"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R1 K13 ["StyleSheet"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K14 ["StyleSheetContext"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R0 K15 ["TagsContext"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R0 K16 ["TextSizeOffsetContext"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R13 R1 K9 ["Enums"]
       61 GETTABLEKS                       R12 R13 K17 ["Theme"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K18 ["Tokens"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R14 R0 K19 ["TokensContext"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K6 [require]
       76 GETTABLEKS                       R15 R0 K20 ["VariantsContext"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K6 [require]
       81 GETTABLEKS                       R17 R1 K11 ["Utility"]
       83 GETTABLEKS                       R16 R17 K21 ["getTextSizeOffset"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K6 [require]
       88 GETTABLEKS                       R19 R1 K22 ["Providers"]
       90 GETTABLEKS                       R18 R19 K23 ["Preferences"]
       92 GETTABLEKS                       R17 R18 K24 ["usePreferences"]
       94 CALL                             R16 1 1
       95 GETIMPORT                        R17 K6 [require]
       97 GETTABLEKS                       R18 R0 K25 ["useTagsState"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K6 [require]
      102 GETTABLEKS                       R20 R1 K11 ["Utility"]
      104 GETTABLEKS                       R19 R20 K26 ["withDefaults"]
      106 CALL                             R18 1 1
      107 GETTABLEKS                       R19 R12 K27 ["getTokens"]
      109 GETTABLEKS                       R21 R6 K28 ["FoundationUseStyleSheetRegistry"]
      111 JUMPIFNOT                        R21 ; [+6]
      112 GETIMPORT                        R20 K6 [require]
      114 GETTABLEKS                       R21 R0 K29 ["useRegistryStyleSheet"]
      116 CALL                             R20 1 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R20
      119 DUPTABLE                         R21 K33 [{"theme", "device", "scale"}]
      120 GETTABLEKS                       R22 R11 K34 ["Dark"]
      122 SETTABLEKS                       R22 R21 K30 ["theme"]
      124 GETTABLEKS                       R22 R5 K35 ["Desktop"]
      126 SETTABLEKS                       R22 R21 K31 ["device"]
      128 LOADN                            R22 1
      129 SETTABLEKS                       R22 R21 K32 ["scale"]
      131 DUPCLOSURE                       R22 K36 [PROTO_0]
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R3
      135 SETGLOBAL                        R22 K37 ["StyleSheetContextWrapper"]
      137 DUPCLOSURE                       R22 K38 [PROTO_3]
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R7
      153 RETURN                           R22 1
