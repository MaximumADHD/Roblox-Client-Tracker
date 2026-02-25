PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K6 ["append"]
       18 GETUPVAL                         R3 1
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K7 ["createElement"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R4 R5 K8 ["ContextStack"]
       27 DUPTABLE                         R5 K10 [{"providers"}]
       28 NEWTABLE                         R6 0 4
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R7 R8 K7 ["createElement"]
       33 GETUPVAL                         R8 4
       34 CALL                             R7 1 1
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R8 R9 K7 ["createElement"]
       38 GETUPVAL                         R9 5
       39 DUPTABLE                         R10 K12 [{"GameId"}]
       40 LOADN                            R11 123
       41 SETTABLEKS                       R11 R10 K11 ["GameId"]
       43 CALL                             R8 2 1
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R9 R10 K7 ["createElement"]
       47 GETUPVAL                         R10 6
       48 CALL                             R9 1 1
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R10 R11 K7 ["createElement"]
       52 GETUPVAL                         R11 7
       53 CALL                             R10 1 -1
       54 SETLIST                          R6 R7 -1 [1]
       56 SETTABLEKS                       R6 R5 K9 ["providers"]
       58 NEWTABLE                         R6 0 1
       60 GETUPVAL                         R8 8
       61 GETTABLEKS                       R7 R8 K13 ["provideMockContext"]
       63 MOVE                             R8 R2
       64 MOVE                             R9 R0
       65 CALL                             R7 2 -1
       66 SETLIST                          R6 R7 -1 [1]
       68 CALL                             R3 3 -1
       69 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["FoundationProvider"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Packages"]
       34 GETTABLEKS                       R6 R7 K11 ["Framework"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K12 ["TestHelpers"]
       39 GETTABLEKS                       R7 R5 K13 ["ContextServices"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R11 R0 K14 ["Src"]
       45 GETTABLEKS                       R10 R11 K15 ["Contexts"]
       47 GETTABLEKS                       R9 R10 K16 ["AnnotationsServiceContext"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R12 R0 K14 ["Src"]
       54 GETTABLEKS                       R11 R12 K15 ["Contexts"]
       56 GETTABLEKS                       R10 R11 K17 ["UsernameContext"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R14 R0 K14 ["Src"]
       63 GETTABLEKS                       R13 R14 K18 ["tests"]
       65 GETTABLEKS                       R12 R13 K19 ["Util"]
       67 GETTABLEKS                       R11 R12 K20 ["createMockPlugin"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R13 R0 K6 ["Packages"]
       74 GETTABLEKS                       R12 R13 K21 ["Dash"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R16 R0 K14 ["Src"]
       81 GETTABLEKS                       R15 R16 K15 ["Contexts"]
       83 GETTABLEKS                       R14 R15 K22 ["TagDropdownContext"]
       85 CALL                             R13 1 1
       86 GETTABLEKS                       R12 R13 K23 ["TagDropdownProvider"]
       88 GETIMPORT                        R14 K5 [require]
       90 GETTABLEKS                       R17 R0 K14 ["Src"]
       92 GETTABLEKS                       R16 R17 K15 ["Contexts"]
       94 GETTABLEKS                       R15 R16 K24 ["TaggableUsersContext"]
       96 CALL                             R14 1 1
       97 GETTABLEKS                       R13 R14 K25 ["TaggableUsersProvider"]
       99 GETIMPORT                        R15 K5 [require]
      101 GETTABLEKS                       R18 R0 K14 ["Src"]
      103 GETTABLEKS                       R17 R18 K15 ["Contexts"]
      105 GETTABLEKS                       R16 R17 K26 ["ClassIconContext"]
      107 CALL                             R15 1 1
      108 GETTABLEKS                       R14 R15 K27 ["Provider"]
      110 GETIMPORT                        R15 K5 [require]
      112 GETTABLEKS                       R18 R0 K14 ["Src"]
      114 GETTABLEKS                       R17 R18 K15 ["Contexts"]
      116 GETTABLEKS                       R16 R17 K28 ["InputListenerContext"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K5 [require]
      121 GETTABLEKS                       R19 R0 K14 ["Src"]
      123 GETTABLEKS                       R18 R19 K15 ["Contexts"]
      125 GETTABLEKS                       R17 R18 K29 ["TelemetryContext"]
      127 CALL                             R16 1 1
      128 NEWTABLE                         R17 0 8
      130 GETTABLEKS                       R19 R7 K30 ["Plugin"]
      132 GETTABLEKS                       R18 R19 K31 ["new"]
      134 MOVE                             R19 R10
      135 CALL                             R19 0 -1
      136 CALL                             R18 -1 1
      137 GETTABLEKS                       R20 R7 K32 ["Analytics"]
      139 GETTABLEKS                       R19 R20 K33 ["mock"]
      141 CALL                             R19 0 1
      142 GETTABLEKS                       R21 R7 K34 ["Localization"]
      144 GETTABLEKS                       R20 R21 K33 ["mock"]
      146 CALL                             R20 0 1
      147 GETTABLEKS                       R21 R9 K31 ["new"]
      149 LOADB                            R22 1
      150 CALL                             R21 1 1
      151 GETTABLEKS                       R22 R8 K31 ["new"]
      153 CALL                             R22 0 1
      154 GETTABLEKS                       R23 R15 K31 ["new"]
      156 CALL                             R23 0 1
      157 GETTABLEKS                       R25 R7 K35 ["Design"]
      159 GETTABLEKS                       R24 R25 K33 ["mock"]
      161 GETIMPORT                        R25 K37 [Instance.new]
      163 LOADK                            R26 K38 ["StyleSheet"]
      164 CALL                             R25 1 -1
      165 CALL                             R24 -1 1
      166 GETTABLEKS                       R25 R16 K33 ["mock"]
      168 CALL                             R25 0 -1
      169 SETLIST                          R17 R18 -1 [1]
      171 DUPCLOSURE                       R18 K39 [PROTO_0]
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R6
      181 RETURN                           R18 1
