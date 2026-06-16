PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R3 R0 K1 ["setStyleSheetRef"]
        7 JUMPIFNOT                        R3 ; [+10]
        8 GETTABLEKS                       R3 R0 K1 ["setStyleSheetRef"]
       10 GETTABLEKS                       R3 R3 K2 ["current"]
       12 JUMPIFEQ                         R3 R2 ; [+5]
       14 GETTABLEKS                       R3 R0 K1 ["setStyleSheetRef"]
       16 SETTABLEKS                       R2 R3 K2 ["current"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["createElement"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K4 ["Provider"]
       24 DUPTABLE                         R5 K6 [{"value"}]
       25 MOVE                             R6 R1
       26 JUMPIF                           R6 ; [+3]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K7 ["None"]
       30 SETTABLEKS                       R6 R5 K5 ["value"]
       32 GETTABLEKS                       R6 R0 K8 ["children"]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["device"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["theme"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["scale"]
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
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K4 ["useRef"]
       19 LOADNIL                          R3
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 3
       22 CALL                             R3 0 2
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K5 ["useVariantsState"]
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R1
       33 NEWTABLE                         R8 0 3
       35 GETTABLEKS                       R9 R1 K1 ["device"]
       37 GETTABLEKS                       R10 R1 K0 ["theme"]
       39 GETTABLEKS                       R11 R1 K2 ["scale"]
       41 SETLIST                          R8 R9 3 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 6
       45 CALL                             R7 0 1
       46 GETTABLEKS                       R8 R7 K7 ["preferredTextSize"]
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       51 DUPCLOSURE                       R10 K8 [PROTO_2]
       52 CAPTURE                          UPVAL U7
       53 NEWTABLE                         R11 0 1
       55 MOVE                             R12 R8
       56 SETLIST                          R11 R12 1 [1]
       58 CALL                             R9 2 1
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K9 ["createElement"]
       62 GETUPVAL                         R11 8
       63 GETTABLEKS                       R11 R11 K10 ["Provider"]
       65 DUPTABLE                         R12 K12 [{"value"}]
       66 SETTABLEKS                       R6 R12 K11 ["value"]
       68 DUPTABLE                         R13 K14 [{"TextSizeOffsetContext"}]
       69 GETUPVAL                         R14 2
       70 GETTABLEKS                       R14 R14 K9 ["createElement"]
       72 GETUPVAL                         R15 9
       73 GETTABLEKS                       R15 R15 K10 ["Provider"]
       75 DUPTABLE                         R16 K12 [{"value"}]
       76 SETTABLEKS                       R9 R16 K11 ["value"]
       78 DUPTABLE                         R17 K16 [{"VariantsContext"}]
       79 GETUPVAL                         R18 2
       80 GETTABLEKS                       R18 R18 K9 ["createElement"]
       82 GETUPVAL                         R19 4
       83 GETTABLEKS                       R19 R19 K10 ["Provider"]
       85 DUPTABLE                         R20 K12 [{"value"}]
       86 SETTABLEKS                       R5 R20 K11 ["value"]
       88 DUPTABLE                         R21 K19 [{"TagsContext", "StyleSheet"}]
       89 GETUPVAL                         R22 2
       90 GETTABLEKS                       R22 R22 K9 ["createElement"]
       92 GETUPVAL                         R23 10
       93 GETTABLEKS                       R23 R23 K10 ["Provider"]
       95 DUPTABLE                         R24 K12 [{"value"}]
       96 SETTABLEKS                       R4 R24 K11 ["value"]
       98 GETUPVAL                         R25 2
       99 GETTABLEKS                       R25 R25 K9 ["createElement"]
      101 GETGLOBAL                        R26 K20 ["StyleSheetContextWrapper"]
      103 DUPTABLE                         R27 K22 [{"setStyleSheetRef"}]
      104 SETTABLEKS                       R2 R27 K21 ["setStyleSheetRef"]
      106 GETTABLEKS                       R28 R0 K23 ["children"]
      108 CALL                             R25 3 -1
      109 CALL                             R22 -1 1
      110 SETTABLEKS                       R22 R21 K17 ["TagsContext"]
      112 GETUPVAL                         R22 2
      113 GETTABLEKS                       R22 R22 K9 ["createElement"]
      115 GETUPVAL                         R23 11
      116 DUPTABLE                         R24 K26 [{"theme", "device", "scale", "tags", "derives", "setStyleSheetRef"}]
      117 GETTABLEKS                       R25 R1 K0 ["theme"]
      119 SETTABLEKS                       R25 R24 K0 ["theme"]
      121 GETTABLEKS                       R25 R1 K1 ["device"]
      123 SETTABLEKS                       R25 R24 K1 ["device"]
      125 GETTABLEKS                       R25 R1 K2 ["scale"]
      127 SETTABLEKS                       R25 R24 K2 ["scale"]
      129 SETTABLEKS                       R3 R24 K24 ["tags"]
      131 GETTABLEKS                       R25 R0 K25 ["derives"]
      133 SETTABLEKS                       R25 R24 K25 ["derives"]
      135 SETTABLEKS                       R2 R24 K21 ["setStyleSheetRef"]
      137 CALL                             R22 2 1
      138 SETTABLEKS                       R22 R21 K18 ["StyleSheet"]
      140 CALL                             R18 3 1
      141 SETTABLEKS                       R18 R17 K15 ["VariantsContext"]
      143 CALL                             R14 3 1
      144 SETTABLEKS                       R14 R13 K13 ["TextSizeOffsetContext"]
      146 CALL                             R10 3 -1
      147 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       25 GETTABLEKS                       R6 R1 K9 ["Enums"]
       27 GETTABLEKS                       R6 R6 K10 ["Device"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R1 K11 ["StyleSheet"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R0 K12 ["StyleSheetContext"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R0 K13 ["TagsContext"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R10 R0 K14 ["TextSizeOffsetContext"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R1 K9 ["Enums"]
       54 GETTABLEKS                       R11 R11 K15 ["Theme"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K16 ["Tokens"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R13 R0 K17 ["TokensContext"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R14 R0 K18 ["VariantsContext"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K6 [require]
       74 GETTABLEKS                       R15 R1 K19 ["Utility"]
       76 GETTABLEKS                       R15 R15 K20 ["getTextSizeOffset"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K6 [require]
       81 GETTABLEKS                       R16 R1 K21 ["Providers"]
       83 GETTABLEKS                       R16 R16 K22 ["Preferences"]
       85 GETTABLEKS                       R16 R16 K23 ["usePreferences"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K6 [require]
       90 GETTABLEKS                       R17 R0 K24 ["useTagsState"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R18 R1 K19 ["Utility"]
       97 GETTABLEKS                       R18 R18 K25 ["withDefaults"]
       99 CALL                             R17 1 1
      100 GETTABLEKS                       R18 R11 K26 ["getTokens"]
      102 DUPTABLE                         R19 K30 [{"theme", "device", "scale"}]
      103 GETTABLEKS                       R20 R10 K31 ["Dark"]
      105 SETTABLEKS                       R20 R19 K27 ["theme"]
      107 GETTABLEKS                       R20 R5 K32 ["Desktop"]
      109 SETTABLEKS                       R20 R19 K28 ["device"]
      111 LOADN                            R20 1
      112 SETTABLEKS                       R20 R19 K29 ["scale"]
      114 DUPCLOSURE                       R20 K33 [PROTO_0]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R3
      118 SETGLOBAL                        R20 K34 ["StyleSheetContextWrapper"]
      120 DUPCLOSURE                       R20 K35 [PROTO_3]
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R6
      133 RETURN                           R20 1
