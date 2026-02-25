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
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K4 ["useRef"]
       19 LOADNIL                          R3
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 3
       22 CALL                             R3 0 2
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R5 R6 K5 ["useVariantsState"]
       26 CALL                             R5 0 1
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R6 R7 K6 ["useMemo"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R1
       33 NEWTABLE                         R8 0 3
       35 GETTABLEKS                       R9 R1 K1 ["device"]
       37 GETTABLEKS                       R10 R1 K0 ["theme"]
       39 GETTABLEKS                       R11 R1 K2 ["scale"]
       41 SETLIST                          R8 R9 3 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R9 6
       45 GETTABLEKS                       R8 R9 K7 ["FoundationDisableStylingPolyfill"]
       47 JUMPIF                           R8 ; [+7]
       48 GETUPVAL                         R7 7
       49 GETTABLEKS                       R8 R1 K0 ["theme"]
       51 GETTABLEKS                       R9 R1 K1 ["device"]
       53 CALL                             R7 2 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R7
       56 GETUPVAL                         R8 8
       57 CALL                             R8 0 1
       58 GETTABLEKS                       R9 R8 K8 ["preferredTextSize"]
       60 GETUPVAL                         R11 2
       61 GETTABLEKS                       R10 R11 K6 ["useMemo"]
       63 DUPCLOSURE                       R11 K9 [PROTO_2]
       64 CAPTURE                          UPVAL U9
       65 NEWTABLE                         R12 0 1
       67 MOVE                             R13 R9
       68 SETLIST                          R12 R13 1 [1]
       70 CALL                             R10 2 1
       71 GETUPVAL                         R12 2
       72 GETTABLEKS                       R11 R12 K10 ["createElement"]
       74 GETUPVAL                         R13 10
       75 GETTABLEKS                       R12 R13 K11 ["Provider"]
       77 DUPTABLE                         R13 K13 [{"value"}]
       78 SETTABLEKS                       R6 R13 K12 ["value"]
       80 DUPTABLE                         R14 K15 [{"TextSizeOffsetContext"}]
       81 GETUPVAL                         R16 2
       82 GETTABLEKS                       R15 R16 K10 ["createElement"]
       84 GETUPVAL                         R17 11
       85 GETTABLEKS                       R16 R17 K11 ["Provider"]
       87 DUPTABLE                         R17 K13 [{"value"}]
       88 SETTABLEKS                       R10 R17 K12 ["value"]
       90 DUPTABLE                         R18 K17 [{"VariantsContext"}]
       91 GETUPVAL                         R20 2
       92 GETTABLEKS                       R19 R20 K10 ["createElement"]
       94 GETUPVAL                         R21 4
       95 GETTABLEKS                       R20 R21 K11 ["Provider"]
       97 DUPTABLE                         R21 K13 [{"value"}]
       98 SETTABLEKS                       R5 R21 K12 ["value"]
      100 GETUPVAL                         R24 6
      101 GETTABLEKS                       R23 R24 K7 ["FoundationDisableStylingPolyfill"]
      103 JUMPIF                           R23 ; [+36]
      104 DUPTABLE                         R22 K20 [{"RulesContext", "StyleLink"}]
      105 GETUPVAL                         R24 2
      106 GETTABLEKS                       R23 R24 K10 ["createElement"]
      108 GETUPVAL                         R25 12
      109 GETTABLEKS                       R24 R25 K11 ["Provider"]
      111 DUPTABLE                         R25 K13 [{"value"}]
      112 DUPTABLE                         R26 K22 [{"rules", "scale"}]
      113 SETTABLEKS                       R7 R26 K21 ["rules"]
      115 GETTABLEKS                       R27 R1 K2 ["scale"]
      117 SETTABLEKS                       R27 R26 K2 ["scale"]
      119 SETTABLEKS                       R26 R25 K12 ["value"]
      121 GETTABLEKS                       R26 R0 K23 ["children"]
      123 CALL                             R23 3 1
      124 SETTABLEKS                       R23 R22 K18 ["RulesContext"]
      126 GETUPVAL                         R25 6
      127 GETTABLEKS                       R24 R25 K24 ["FoundationWarnOnMultipleStyleLinks"]
      129 JUMPIFNOT                        R24 ; [+6]
      130 GETUPVAL                         R24 2
      131 GETTABLEKS                       R23 R24 K10 ["createElement"]
      133 LOADK                            R24 K19 ["StyleLink"]
      134 CALL                             R23 1 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R23
      137 SETTABLEKS                       R23 R22 K19 ["StyleLink"]
      139 JUMP                             ; [+52]
      140 DUPTABLE                         R22 K27 [{"TagsContext", "StyleSheet"}]
      141 GETUPVAL                         R24 2
      142 GETTABLEKS                       R23 R24 K10 ["createElement"]
      144 GETUPVAL                         R25 13
      145 GETTABLEKS                       R24 R25 K11 ["Provider"]
      147 DUPTABLE                         R25 K13 [{"value"}]
      148 SETTABLEKS                       R4 R25 K12 ["value"]
      150 GETUPVAL                         R27 2
      151 GETTABLEKS                       R26 R27 K10 ["createElement"]
      153 GETGLOBAL                        R27 K28 ["StyleSheetContextWrapper"]
      155 DUPTABLE                         R28 K30 [{"setStyleSheetRef"}]
      156 SETTABLEKS                       R2 R28 K29 ["setStyleSheetRef"]
      158 GETTABLEKS                       R29 R0 K23 ["children"]
      160 CALL                             R26 3 -1
      161 CALL                             R23 -1 1
      162 SETTABLEKS                       R23 R22 K25 ["TagsContext"]
      164 GETUPVAL                         R24 2
      165 GETTABLEKS                       R23 R24 K10 ["createElement"]
      167 GETUPVAL                         R24 14
      168 DUPTABLE                         R25 K33 [{"theme", "device", "scale", "tags", "derives", "setStyleSheetRef"}]
      169 GETTABLEKS                       R26 R1 K0 ["theme"]
      171 SETTABLEKS                       R26 R25 K0 ["theme"]
      173 GETTABLEKS                       R26 R1 K1 ["device"]
      175 SETTABLEKS                       R26 R25 K1 ["device"]
      177 GETTABLEKS                       R26 R1 K2 ["scale"]
      179 SETTABLEKS                       R26 R25 K2 ["scale"]
      181 SETTABLEKS                       R3 R25 K31 ["tags"]
      183 GETTABLEKS                       R26 R0 K32 ["derives"]
      185 SETTABLEKS                       R26 R25 K32 ["derives"]
      187 SETTABLEKS                       R2 R25 K29 ["setStyleSheetRef"]
      189 CALL                             R23 2 1
      190 SETTABLEKS                       R23 R22 K26 ["StyleSheet"]
      192 CALL                             R19 3 1
      193 SETTABLEKS                       R19 R18 K16 ["VariantsContext"]
      195 CALL                             R15 3 1
      196 SETTABLEKS                       R15 R14 K14 ["TextSizeOffsetContext"]
      198 CALL                             R11 3 -1
      199 RETURN                           R11 -1

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
       15 GETTABLEKS                       R4 R2 K7 ["React"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R6 R1 K8 ["Utility"]
       22 GETTABLEKS                       R5 R6 K9 ["Flags"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R2 K10 ["Cryo"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R8 R1 K11 ["Enums"]
       34 GETTABLEKS                       R7 R8 K12 ["Theme"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R9 R1 K11 ["Enums"]
       41 GETTABLEKS                       R8 R9 K13 ["Device"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R1 K14 ["StyleSheet"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K6 [require]
       51 GETTABLEKS                       R10 R0 K15 ["TokensContext"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R11 R0 K16 ["Tokens"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R12 R0 K17 ["TagsContext"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K18 ["RulesContext"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R14 R0 K19 ["useTagsState"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K6 [require]
       76 GETTABLEKS                       R15 R0 K20 ["VariantsContext"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K6 [require]
       81 GETTABLEKS                       R17 R1 K8 ["Utility"]
       83 GETTABLEKS                       R16 R17 K21 ["withDefaults"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K6 [require]
       88 GETTABLEKS                       R18 R1 K8 ["Utility"]
       90 GETTABLEKS                       R17 R18 K22 ["useGeneratedRules"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R18 R0 K23 ["StyleSheetContext"]
       97 CALL                             R17 1 1
       98 GETIMPORT                        R18 K6 [require]
      100 GETTABLEKS                       R19 R0 K24 ["TextSizeOffsetContext"]
      102 CALL                             R18 1 1
      103 GETIMPORT                        R19 K6 [require]
      105 GETTABLEKS                       R22 R1 K25 ["Providers"]
      107 GETTABLEKS                       R21 R22 K26 ["Preferences"]
      109 GETTABLEKS                       R20 R21 K27 ["usePreferences"]
      111 CALL                             R19 1 1
      112 GETIMPORT                        R20 K6 [require]
      114 GETTABLEKS                       R22 R1 K8 ["Utility"]
      116 GETTABLEKS                       R21 R22 K28 ["getTextSizeOffset"]
      118 CALL                             R20 1 1
      119 GETTABLEKS                       R21 R10 K29 ["getTokens"]
      121 DUPTABLE                         R22 K33 [{"theme", "device", "scale"}]
      122 GETTABLEKS                       R23 R6 K34 ["Dark"]
      124 SETTABLEKS                       R23 R22 K30 ["theme"]
      126 GETTABLEKS                       R23 R7 K35 ["Desktop"]
      128 SETTABLEKS                       R23 R22 K31 ["device"]
      130 LOADN                            R23 1
      131 SETTABLEKS                       R23 R22 K32 ["scale"]
      133 DUPCLOSURE                       R23 K36 [PROTO_0]
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R5
      137 SETGLOBAL                        R23 K37 ["StyleSheetContextWrapper"]
      139 DUPCLOSURE                       R23 K38 [PROTO_3]
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R22
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R20
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R8
      155 RETURN                           R23 1
