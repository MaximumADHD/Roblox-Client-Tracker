PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected story to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["provideMockContext"]
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R0
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["TestHelpers"]
       25 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Reducers"]
       33 GETTABLEKS                       R6 R6 K12 ["MainReducer"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Resources"]
       42 GETTABLEKS                       R7 R7 K14 ["MakeTheme"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R0 K10 ["Src"]
       47 GETTABLEKS                       R7 R7 K15 ["Controllers"]
       49 GETIMPORT                        R8 K4 [require]
       51 GETTABLEKS                       R9 R7 K16 ["GeneralServiceController"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R10 R7 K17 ["ImageLoader"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K4 [require]
       61 GETTABLEKS                       R11 R7 K18 ["ImageUploader"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K4 [require]
       66 GETTABLEKS                       R12 R7 K19 ["ImportAssetHandler"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K4 [require]
       71 GETTABLEKS                       R13 R7 K20 ["MaterialServiceController"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K4 [require]
       76 GETTABLEKS                       R14 R7 K21 ["PluginController"]
       78 CALL                             R13 1 1
       79 GETTABLEKS                       R14 R4 K22 ["Store"]
       81 GETTABLEKS                       R14 R14 K23 ["new"]
       83 GETTABLEKS                       R15 R1 K22 ["Store"]
       85 GETTABLEKS                       R15 R15 K23 ["new"]
       87 MOVE                             R16 R5
       88 LOADNIL                          R17
       89 NEWTABLE                         R18 0 1
       91 GETTABLEKS                       R19 R1 K24 ["thunkMiddleware"]
       93 SETLIST                          R18 R19 1 [1]
       95 LOADNIL                          R19
       96 CALL                             R15 4 -1
       97 CALL                             R14 -1 1
       98 GETTABLEKS                       R15 R10 K23 ["new"]
      100 CALL                             R15 0 1
      101 NEWTABLE                         R16 0 9
      103 GETTABLEKS                       R17 R4 K25 ["Analytics"]
      105 GETTABLEKS                       R17 R17 K26 ["mock"]
      107 CALL                             R17 0 1
      108 GETTABLEKS                       R18 R4 K27 ["Localization"]
      110 GETTABLEKS                       R18 R18 K26 ["mock"]
      112 CALL                             R18 0 1
      113 MOVE                             R19 R14
      114 GETTABLEKS                       R20 R8 K26 ["mock"]
      116 CALL                             R20 0 1
      117 GETTABLEKS                       R21 R11 K26 ["mock"]
      119 MOVE                             R22 R15
      120 CALL                             R21 1 1
      121 GETTABLEKS                       R22 R9 K26 ["mock"]
      123 CALL                             R22 0 1
      124 GETTABLEKS                       R23 R12 K26 ["mock"]
      126 GETTABLEKS                       R24 R14 K28 ["store"]
      128 CALL                             R23 1 1
      129 GETTABLEKS                       R24 R13 K26 ["mock"]
      131 CALL                             R24 0 1
      132 MOVE                             R25 R6
      133 LOADB                            R26 1
      134 CALL                             R25 1 -1
      135 SETLIST                          R16 R17 -1 [1]
      137 DUPCLOSURE                       R17 K29 [PROTO_0]
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R16
      140 RETURN                           R17 1
