PROTO_0:
        0 GETUPVAL                         R4 0
        1 LENGTH                           R3 R4
        2 LOADN                            R1 1
        3 LOADN                            R2 255
        4 FORNPREP                         R1
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R3
        7 JUMPIFNOT                        R4 ; [+13]
        8 GETTABLEKS                       R5 R4 K0 ["Destroy"]
       10 JUMPIFNOT                        R5 ; [+4]
       11 NAMECALL                         R5 R4 K0 ["Destroy"]
       13 CALL                             R5 1 0
       14 JUMP                             ; [+6]
       15 GETTABLEKS                       R5 R4 K1 ["destroy"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 NAMECALL                         R5 R4 K1 ["destroy"]
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 0
       22 LOADNIL                          R6
       23 SETTABLE                         R6 R5 R3
       24 FORNLOOP                         R1
       25 NEWTABLE                         R1 0 0
       27 SETUPVAL                         R1 0
       28 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETTABLEKS                       R2 R0 K1 ["FocusedDataModelSession"]
        7 ORK                              R1 R2 K0 []
        8 GETTABLEKS                       R3 R0 K2 ["initialStoreState"]
       10 ORK                              R2 R3 K0 []
       11 GETTABLEKS                       R3 R0 K3 ["networkResponseMap"]
       13 JUMPIF                           R3 ; [+2]
       14 NEWTABLE                         R3 0 0
       16 GETTABLEKS                       R4 R0 K4 ["overrideServices"]
       18 JUMPIF                           R4 ; [+2]
       19 NEWTABLE                         R4 0 0
       21 GETTABLEKS                       R5 R4 K5 ["MockStudioService"]
       23 GETTABLEKS                       R6 R4 K6 ["MockPluginManagementService"]
       25 GETTABLEKS                       R7 R4 K7 ["MockPermissionsService"]
       27 GETTABLEKS                       R8 R4 K8 ["MockMarketplaceService"]
       29 GETTABLEKS                       R9 R4 K9 ["MockPluginPolicyService"]
       31 NEWTABLE                         R10 0 0
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R11 R11 K10 ["new"]
       36 MOVE                             R12 R1
       37 CALL                             R11 1 1
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R12 R12 K11 ["Store"]
       41 GETTABLEKS                       R12 R12 K10 ["new"]
       43 GETUPVAL                         R13 2
       44 MOVE                             R14 R2
       45 NEWTABLE                         R15 0 1
       47 GETUPVAL                         R16 1
       48 GETTABLEKS                       R16 R16 K12 ["thunkMiddleware"]
       50 SETLIST                          R15 R16 1 [1]
       52 CALL                             R12 3 1
       53 GETIMPORT                        R13 K14 [require]
       55 GETUPVAL                         R14 3
       56 GETTABLEKS                       R14 R14 K15 ["Src"]
       58 GETTABLEKS                       R14 R14 K16 ["Resources"]
       60 GETTABLEKS                       R14 R14 K17 ["makeTheme"]
       62 CALL                             R13 1 1
       63 GETUPVAL                         R14 4
       64 GETTABLEKS                       R14 R14 K18 ["Localization"]
       66 GETTABLEKS                       R14 R14 K19 ["mock"]
       68 CALL                             R14 0 1
       69 GETUPVAL                         R15 5
       70 GETTABLEKS                       R15 R15 K20 ["API"]
       72 GETTABLEKS                       R15 R15 K19 ["mock"]
       74 MOVE                             R16 R3
       75 CALL                             R15 1 1
       76 GETUPVAL                         R16 4
       77 GETTABLEKS                       R16 R16 K21 ["Analytics"]
       79 GETTABLEKS                       R16 R16 K19 ["mock"]
       81 CALL                             R16 0 1
       82 FASTCALL2                        TABLE_INSERT R10 R11 ; [+5]
       84 MOVE                             R18 R10
       85 MOVE                             R19 R11
       86 GETIMPORT                        R17 K24 [table.insert]
       88 CALL                             R17 2 0
       89 MOVE                             R17 R5
       90 JUMPIF                           R17 ; [+4]
       91 GETUPVAL                         R17 6
       92 GETTABLEKS                       R17 R17 K10 ["new"]
       94 CALL                             R17 0 1
       95 MOVE                             R18 R6
       96 JUMPIF                           R18 ; [+4]
       97 GETUPVAL                         R18 7
       98 GETTABLEKS                       R18 R18 K10 ["new"]
      100 CALL                             R18 0 1
      101 MOVE                             R19 R7
      102 JUMPIF                           R19 ; [+4]
      103 GETUPVAL                         R19 8
      104 GETTABLEKS                       R19 R19 K10 ["new"]
      106 CALL                             R19 0 1
      107 MOVE                             R20 R8
      108 JUMPIF                           R20 ; [+4]
      109 GETUPVAL                         R20 9
      110 GETTABLEKS                       R20 R20 K10 ["new"]
      112 CALL                             R20 0 1
      113 MOVE                             R21 R9
      114 JUMPIF                           R21 ; [+4]
      115 GETUPVAL                         R21 10
      116 GETTABLEKS                       R21 R21 K10 ["new"]
      118 CALL                             R21 0 1
      119 GETUPVAL                         R22 11
      120 GETTABLEKS                       R22 R22 K10 ["new"]
      122 MOVE                             R23 R17
      123 MOVE                             R24 R18
      124 MOVE                             R25 R19
      125 MOVE                             R26 R20
      126 MOVE                             R27 R21
      127 CALL                             R22 5 1
      128 JUMPIF                           R5 ; [+7]
      129 FASTCALL2                        TABLE_INSERT R10 R17 ; [+5]
      131 MOVE                             R24 R10
      132 MOVE                             R25 R17
      133 GETIMPORT                        R23 K24 [table.insert]
      135 CALL                             R23 2 0
      136 JUMPIF                           R6 ; [+7]
      137 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      139 MOVE                             R24 R10
      140 MOVE                             R25 R18
      141 GETIMPORT                        R23 K24 [table.insert]
      143 CALL                             R23 2 0
      144 JUMPIF                           R7 ; [+7]
      145 FASTCALL2                        TABLE_INSERT R10 R19 ; [+5]
      147 MOVE                             R24 R10
      148 MOVE                             R25 R19
      149 GETIMPORT                        R23 K24 [table.insert]
      151 CALL                             R23 2 0
      152 JUMPIF                           R8 ; [+7]
      153 FASTCALL2                        TABLE_INSERT R10 R20 ; [+5]
      155 MOVE                             R24 R10
      156 MOVE                             R25 R20
      157 GETIMPORT                        R23 K24 [table.insert]
      159 CALL                             R23 2 0
      160 JUMPIF                           R9 ; [+7]
      161 FASTCALL2                        TABLE_INSERT R10 R21 ; [+5]
      163 MOVE                             R24 R10
      164 MOVE                             R25 R21
      165 GETIMPORT                        R23 K24 [table.insert]
      167 CALL                             R23 2 0
      168 FASTCALL2                        TABLE_INSERT R10 R22 ; [+5]
      170 MOVE                             R24 R10
      171 MOVE                             R25 R22
      172 GETIMPORT                        R23 K24 [table.insert]
      174 CALL                             R23 2 0
      175 LOADNIL                          R23
      176 LOADNIL                          R24
      177 LOADNIL                          R25
      178 LOADNIL                          R26
      179 GETUPVAL                         R27 12
      180 CALL                             R27 0 1
      181 JUMPIFNOT                        R27 ; [+48]
      182 LOADK                            R29 K25 ["toolbar"]
      183 NAMECALL                         R27 R11 K26 ["CreateToolbar"]
      185 CALL                             R27 2 1
      186 MOVE                             R23 R27
      187 LOADK                            R29 K27 ["button"]
      188 NAMECALL                         R27 R23 K28 ["CreateButton"]
      190 CALL                             R27 2 1
      191 MOVE                             R24 R27
      192 NAMECALL                         R27 R11 K29 ["CreateDockWidgetPluginGui"]
      194 CALL                             R27 1 1
      195 MOVE                             R25 R27
      196 LOADB                            R27 1
      197 SETTABLEKS                       R27 R25 K30 ["Enabled"]
      199 DUPTABLE                         R27 K34 [{"mainDockWidget", "mainButton", "mainButtonClickedSignal"}]
      200 SETTABLEKS                       R25 R27 K31 ["mainDockWidget"]
      202 SETTABLEKS                       R24 R27 K32 ["mainButton"]
      204 GETTABLEKS                       R28 R24 K35 ["Click"]
      206 SETTABLEKS                       R28 R27 K33 ["mainButtonClickedSignal"]
      208 MOVE                             R26 R27
      209 FASTCALL2                        TABLE_INSERT R10 R23 ; [+5]
      211 MOVE                             R28 R10
      212 MOVE                             R29 R23
      213 GETIMPORT                        R27 K24 [table.insert]
      215 CALL                             R27 2 0
      216 FASTCALL2                        TABLE_INSERT R10 R24 ; [+5]
      218 MOVE                             R28 R10
      219 MOVE                             R29 R24
      220 GETIMPORT                        R27 K24 [table.insert]
      222 CALL                             R27 2 0
      223 FASTCALL2                        TABLE_INSERT R10 R25 ; [+5]
      225 MOVE                             R28 R10
      226 MOVE                             R29 R25
      227 GETIMPORT                        R27 K24 [table.insert]
      229 CALL                             R27 2 0
      230 DUPTABLE                         R27 K50 [{"mockPlugin", "store", "theme", "localization", "api", "analytics", "mockStudioService", "mockPluginManagementService", "mockPermissionsService", "mockMarketplaceService", "mockPluginPolicyService", "pluginManagementApi", "pluginLoaderContext", "Destroy"}]
      231 SETTABLEKS                       R11 R27 K36 ["mockPlugin"]
      233 SETTABLEKS                       R12 R27 K37 ["store"]
      235 SETTABLEKS                       R13 R27 K38 ["theme"]
      237 SETTABLEKS                       R14 R27 K39 ["localization"]
      239 SETTABLEKS                       R15 R27 K40 ["api"]
      241 SETTABLEKS                       R16 R27 K41 ["analytics"]
      243 SETTABLEKS                       R17 R27 K42 ["mockStudioService"]
      245 SETTABLEKS                       R18 R27 K43 ["mockPluginManagementService"]
      247 SETTABLEKS                       R19 R27 K44 ["mockPermissionsService"]
      249 SETTABLEKS                       R20 R27 K45 ["mockMarketplaceService"]
      251 SETTABLEKS                       R21 R27 K46 ["mockPluginPolicyService"]
      253 SETTABLEKS                       R22 R27 K47 ["pluginManagementApi"]
      255 SETTABLEKS                       R26 R27 K48 ["pluginLoaderContext"]
      257 NEWCLOSURE                       R28 P0
      258 CAPTURE                          REF R10
      259 SETTABLEKS                       R28 R27 K49 ["Destroy"]
      261 CLOSEUPVALS                      R10
      262 RETURN                           R27 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Flags"]
       17 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioLazyPluginManagement"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K8 ["Packages"]
       24 GETTABLEKS                       R3 R3 K9 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K8 ["Packages"]
       31 GETTABLEKS                       R4 R4 K10 ["Rodux"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Packages"]
       38 GETTABLEKS                       R5 R5 K11 ["Http"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Packages"]
       45 GETTABLEKS                       R6 R6 K12 ["Framework"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R5 K13 ["ContextServices"]
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R8 R0 K5 ["Src"]
       54 GETTABLEKS                       R8 R8 K14 ["Reducers"]
       56 GETTABLEKS                       R8 R8 K15 ["MainReducer"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K4 [require]
       61 GETTABLEKS                       R9 R0 K5 ["Src"]
       63 GETTABLEKS                       R9 R9 K16 ["Tests"]
       65 GETTABLEKS                       R9 R9 K17 ["Mocks"]
       67 GETTABLEKS                       R9 R9 K18 ["MockPlugin"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K4 [require]
       72 GETTABLEKS                       R10 R0 K5 ["Src"]
       74 GETTABLEKS                       R10 R10 K19 ["Util"]
       76 GETTABLEKS                       R10 R10 K20 ["PluginManagementApi"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K4 [require]
       81 GETTABLEKS                       R11 R0 K5 ["Src"]
       83 GETTABLEKS                       R11 R11 K16 ["Tests"]
       85 GETTABLEKS                       R11 R11 K17 ["Mocks"]
       87 GETTABLEKS                       R11 R11 K21 ["MockPluginManagementService"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K4 [require]
       92 GETTABLEKS                       R12 R0 K5 ["Src"]
       94 GETTABLEKS                       R12 R12 K16 ["Tests"]
       96 GETTABLEKS                       R12 R12 K17 ["Mocks"]
       98 GETTABLEKS                       R12 R12 K22 ["MockStudioService"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K4 [require]
      103 GETTABLEKS                       R13 R0 K5 ["Src"]
      105 GETTABLEKS                       R13 R13 K16 ["Tests"]
      107 GETTABLEKS                       R13 R13 K17 ["Mocks"]
      109 GETTABLEKS                       R13 R13 K23 ["MockPermissionsService"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K4 [require]
      114 GETTABLEKS                       R14 R0 K5 ["Src"]
      116 GETTABLEKS                       R14 R14 K16 ["Tests"]
      118 GETTABLEKS                       R14 R14 K17 ["Mocks"]
      120 GETTABLEKS                       R14 R14 K24 ["MockMarketplaceService"]
      122 CALL                             R13 1 1
      123 GETIMPORT                        R14 K4 [require]
      125 GETTABLEKS                       R15 R0 K5 ["Src"]
      127 GETTABLEKS                       R15 R15 K16 ["Tests"]
      129 GETTABLEKS                       R15 R15 K17 ["Mocks"]
      131 GETTABLEKS                       R15 R15 K25 ["MockPluginPolicyService"]
      133 CALL                             R14 1 1
      134 DUPCLOSURE                       R15 K26 [PROTO_1]
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R1
      148 RETURN                           R15 1
