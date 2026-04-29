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
        2 GETTABLEKS                       R1 R2 K0 ["theme"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["device"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["scale"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K3 ["tokenOverrides"]
       13 CALL                             R0 4 -1
       14 RETURN                           R0 -1

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
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R8 0 4
       50 GETTABLEKS                       R9 R1 K1 ["device"]
       52 GETTABLEKS                       R10 R1 K0 ["theme"]
       54 GETTABLEKS                       R11 R1 K2 ["scale"]
       56 GETTABLEKS                       R12 R0 K8 ["tokenOverrides"]
       58 SETLIST                          R8 R9 4 [1]
       60 CALL                             R6 2 1
       61 GETUPVAL                         R7 7
       62 CALL                             R7 0 1
       63 GETTABLEKS                       R8 R7 K9 ["preferredTextSize"]
       65 GETUPVAL                         R10 3
       66 GETTABLEKS                       R9 R10 K7 ["useMemo"]
       68 DUPCLOSURE                       R10 K10 [PROTO_2]
       69 CAPTURE                          UPVAL U8
       70 NEWTABLE                         R11 0 1
       72 MOVE                             R12 R8
       73 SETLIST                          R11 R12 1 [1]
       75 CALL                             R9 2 1
       76 LOADNIL                          R10
       77 LOADNIL                          R11
       78 GETUPVAL                         R13 2
       79 GETTABLEKS                       R12 R13 K4 ["FoundationUseStyleSheetRegistry"]
       81 JUMPIFNOT                        R12 ; [+12]
       82 GETUPVAL                         R12 9
       83 GETTABLEKS                       R13 R1 K0 ["theme"]
       85 GETTABLEKS                       R14 R1 K1 ["device"]
       87 GETTABLEKS                       R15 R1 K2 ["scale"]
       89 GETTABLEKS                       R16 R0 K8 ["tokenOverrides"]
       91 CALL                             R12 4 2
       92 MOVE                             R10 R12
       93 MOVE                             R11 R13
       94 GETUPVAL                         R13 3
       95 GETTABLEKS                       R12 R13 K11 ["createElement"]
       97 GETUPVAL                         R14 10
       98 GETTABLEKS                       R13 R14 K12 ["Provider"]
      100 DUPTABLE                         R14 K14 [{"value"}]
      101 SETTABLEKS                       R6 R14 K13 ["value"]
      103 DUPTABLE                         R15 K16 [{"TextSizeOffsetContext"}]
      104 GETUPVAL                         R17 3
      105 GETTABLEKS                       R16 R17 K11 ["createElement"]
      107 GETUPVAL                         R18 11
      108 GETTABLEKS                       R17 R18 K12 ["Provider"]
      110 DUPTABLE                         R18 K14 [{"value"}]
      111 SETTABLEKS                       R9 R18 K13 ["value"]
      113 DUPTABLE                         R19 K18 [{"VariantsContext"}]
      114 GETUPVAL                         R21 3
      115 GETTABLEKS                       R20 R21 K11 ["createElement"]
      117 GETUPVAL                         R22 5
      118 GETTABLEKS                       R21 R22 K12 ["Provider"]
      120 DUPTABLE                         R22 K14 [{"value"}]
      121 SETTABLEKS                       R5 R22 K13 ["value"]
      123 DUPTABLE                         R23 K21 [{"TagsContext", "StyleSheet"}]
      124 GETUPVAL                         R25 3
      125 GETTABLEKS                       R24 R25 K11 ["createElement"]
      127 GETUPVAL                         R26 12
      128 GETTABLEKS                       R25 R26 K12 ["Provider"]
      130 DUPTABLE                         R26 K14 [{"value"}]
      131 GETUPVAL                         R29 2
      132 GETTABLEKS                       R28 R29 K4 ["FoundationUseStyleSheetRegistry"]
      134 JUMPIFNOT                        R28 ; [+2]
      135 MOVE                             R27 R11
      136 JUMP                             ; [+1]
      137 MOVE                             R27 R4
      138 SETTABLEKS                       R27 R26 K13 ["value"]
      140 GETUPVAL                         R29 2
      141 GETTABLEKS                       R28 R29 K4 ["FoundationUseStyleSheetRegistry"]
      143 JUMPIFNOT                        R28 ; [+13]
      144 GETUPVAL                         R28 3
      145 GETTABLEKS                       R27 R28 K11 ["createElement"]
      147 GETUPVAL                         R29 13
      148 GETTABLEKS                       R28 R29 K12 ["Provider"]
      150 DUPTABLE                         R29 K14 [{"value"}]
      151 SETTABLEKS                       R10 R29 K13 ["value"]
      153 GETTABLEKS                       R30 R0 K22 ["children"]
      155 CALL                             R27 3 1
      156 JUMP                             ; [+11]
      157 GETUPVAL                         R28 3
      158 GETTABLEKS                       R27 R28 K11 ["createElement"]
      160 GETGLOBAL                        R28 K23 ["StyleSheetContextWrapper"]
      162 DUPTABLE                         R29 K25 [{"setStyleSheetRef"}]
      163 SETTABLEKS                       R2 R29 K24 ["setStyleSheetRef"]
      165 GETTABLEKS                       R30 R0 K22 ["children"]
      167 CALL                             R27 3 1
      168 CALL                             R24 3 1
      169 SETTABLEKS                       R24 R23 K19 ["TagsContext"]
      171 GETUPVAL                         R26 2
      172 GETTABLEKS                       R25 R26 K4 ["FoundationUseStyleSheetRegistry"]
      174 JUMPIFNOT                        R25 ; [+9]
      175 GETUPVAL                         R25 3
      176 GETTABLEKS                       R24 R25 K11 ["createElement"]
      178 LOADK                            R25 K26 ["StyleLink"]
      179 DUPTABLE                         R26 K27 [{"StyleSheet"}]
      180 SETTABLEKS                       R10 R26 K20 ["StyleSheet"]
      182 CALL                             R24 2 1
      183 JUMP                             ; [+30]
      184 GETUPVAL                         R25 3
      185 GETTABLEKS                       R24 R25 K11 ["createElement"]
      187 GETUPVAL                         R25 14
      188 DUPTABLE                         R26 K30 [{"theme", "device", "scale", "tags", "derives", "setStyleSheetRef", "tokenOverrides"}]
      189 GETTABLEKS                       R27 R1 K0 ["theme"]
      191 SETTABLEKS                       R27 R26 K0 ["theme"]
      193 GETTABLEKS                       R27 R1 K1 ["device"]
      195 SETTABLEKS                       R27 R26 K1 ["device"]
      197 GETTABLEKS                       R27 R1 K2 ["scale"]
      199 SETTABLEKS                       R27 R26 K2 ["scale"]
      201 SETTABLEKS                       R3 R26 K28 ["tags"]
      203 GETTABLEKS                       R27 R0 K29 ["derives"]
      205 SETTABLEKS                       R27 R26 K29 ["derives"]
      207 SETTABLEKS                       R2 R26 K24 ["setStyleSheetRef"]
      209 GETTABLEKS                       R27 R0 K8 ["tokenOverrides"]
      211 SETTABLEKS                       R27 R26 K8 ["tokenOverrides"]
      213 CALL                             R24 2 1
      214 SETTABLEKS                       R24 R23 K20 ["StyleSheet"]
      216 CALL                             R20 3 1
      217 SETTABLEKS                       R20 R19 K17 ["VariantsContext"]
      219 CALL                             R16 3 1
      220 SETTABLEKS                       R16 R15 K15 ["TextSizeOffsetContext"]
      222 CALL                             R12 3 -1
      223 RETURN                           R12 -1

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
