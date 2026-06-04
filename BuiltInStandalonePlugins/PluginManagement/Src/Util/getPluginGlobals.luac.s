PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 RETURN                           R1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K0 ; [+4]
       11 LOADK                            R3 K0 ["getPluginGlobals hasn't been initialized yet"]
       12 GETIMPORT                        R1 K2 [assert]
       14 CALL                             R1 2 0
       15 DUPTABLE                         R1 K12 [{"plugin", "localization", "theme", "store", "api", "mouse", "focusGui", "analytics", "pluginManagementApi"}]
       16 SETTABLEKS                       R0 R1 K3 ["plugin"]
       18 GETUPVAL                         R2 1
       19 SETTABLEKS                       R2 R1 K4 ["localization"]
       21 GETUPVAL                         R2 2
       22 SETTABLEKS                       R2 R1 K5 ["theme"]
       24 GETUPVAL                         R2 3
       25 SETTABLEKS                       R2 R1 K6 ["store"]
       27 GETUPVAL                         R2 4
       28 SETTABLEKS                       R2 R1 K7 ["api"]
       30 NAMECALL                         R2 R0 K13 ["GetMouse"]
       32 CALL                             R2 1 1
       33 SETTABLEKS                       R2 R1 K8 ["mouse"]
       35 NEWTABLE                         R2 0 0
       37 SETTABLEKS                       R2 R1 K9 ["focusGui"]
       39 GETUPVAL                         R2 5
       40 SETTABLEKS                       R2 R1 K10 ["analytics"]
       42 GETUPVAL                         R2 6
       43 SETTABLEKS                       R2 R1 K11 ["pluginManagementApi"]
       45 SETUPVAL                         R1 0
       46 GETUPVAL                         R1 0
       47 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioLazyPluginManagement"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+2]
       21 LOADNIL                          R2
       22 RETURN                           R2 1
       23 GETIMPORT                        R2 K4 [require]
       25 GETTABLEKS                       R3 R0 K8 ["Packages"]
       27 GETTABLEKS                       R3 R3 K9 ["Framework"]
       29 CALL                             R2 1 1
       30 GETTABLEKS                       R3 R2 K10 ["ContextServices"]
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Packages"]
       36 GETTABLEKS                       R5 R5 K11 ["Rodux"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K5 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Reducers"]
       45 GETTABLEKS                       R6 R6 K13 ["MainReducer"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R4 K14 ["Store"]
       50 GETTABLEKS                       R6 R6 K15 ["new"]
       52 MOVE                             R7 R5
       53 LOADNIL                          R8
       54 NEWTABLE                         R9 0 1
       56 GETTABLEKS                       R10 R4 K16 ["thunkMiddleware"]
       58 SETLIST                          R9 R10 1 [1]
       60 CALL                             R6 3 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K5 ["Src"]
       65 GETTABLEKS                       R8 R8 K17 ["Resources"]
       67 GETTABLEKS                       R8 R8 K18 ["makeTheme"]
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R8 R0 K5 ["Src"]
       72 GETTABLEKS                       R8 R8 K17 ["Resources"]
       74 GETTABLEKS                       R8 R8 K19 ["SourceStrings"]
       76 GETTABLEKS                       R9 R0 K5 ["Src"]
       78 GETTABLEKS                       R9 R9 K17 ["Resources"]
       80 GETTABLEKS                       R9 R9 K20 ["LocalizedStrings"]
       82 GETTABLEKS                       R10 R3 K21 ["Localization"]
       84 GETTABLEKS                       R11 R10 K15 ["new"]
       86 DUPTABLE                         R12 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       87 SETTABLEKS                       R8 R12 K22 ["stringResourceTable"]
       89 SETTABLEKS                       R9 R12 K23 ["translationResourceTable"]
       91 LOADK                            R13 K26 ["PluginInstallation"]
       92 SETTABLEKS                       R13 R12 K24 ["pluginName"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K4 [require]
       97 GETTABLEKS                       R13 R0 K8 ["Packages"]
       99 GETTABLEKS                       R13 R13 K27 ["Http"]
      101 CALL                             R12 1 1
      102 GETTABLEKS                       R13 R12 K28 ["API"]
      104 GETTABLEKS                       R13 R13 K15 ["new"]
      106 DUPTABLE                         R14 K30 [{"networking"}]
      107 GETTABLEKS                       R15 R12 K31 ["Networking"]
      109 GETTABLEKS                       R15 R15 K15 ["new"]
      111 DUPTABLE                         R16 K34 [{"isInternal", "loggingLevel"}]
      112 LOADB                            R17 1
      113 SETTABLEKS                       R17 R16 K32 ["isInternal"]
      115 LOADN                            R17 0
      116 SETTABLEKS                       R17 R16 K33 ["loggingLevel"]
      118 CALL                             R15 1 1
      119 SETTABLEKS                       R15 R14 K29 ["networking"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K4 [require]
      124 GETTABLEKS                       R15 R0 K5 ["Src"]
      126 GETTABLEKS                       R15 R15 K35 ["Util"]
      128 GETTABLEKS                       R15 R15 K36 ["getAnalyticsContextItem"]
      130 CALL                             R14 1 1
      131 MOVE                             R15 R14
      132 CALL                             R15 0 1
      133 GETIMPORT                        R16 K4 [require]
      135 GETTABLEKS                       R17 R0 K5 ["Src"]
      137 GETTABLEKS                       R17 R17 K35 ["Util"]
      139 GETTABLEKS                       R17 R17 K37 ["PluginManagementApi"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K39 [game]
      144 LOADK                            R19 K40 ["StudioService"]
      145 NAMECALL                         R17 R17 K41 ["GetService"]
      147 CALL                             R17 2 1
      148 GETIMPORT                        R18 K39 [game]
      150 LOADK                            R20 K42 ["PluginManagementService"]
      151 NAMECALL                         R18 R18 K41 ["GetService"]
      153 CALL                             R18 2 1
      154 GETIMPORT                        R19 K39 [game]
      156 LOADK                            R21 K43 ["MarketplaceService"]
      157 NAMECALL                         R19 R19 K41 ["GetService"]
      159 CALL                             R19 2 1
      160 GETIMPORT                        R20 K39 [game]
      162 LOADK                            R22 K44 ["PermissionsService"]
      163 NAMECALL                         R20 R20 K41 ["GetService"]
      165 CALL                             R20 2 1
      166 GETIMPORT                        R21 K39 [game]
      168 LOADK                            R23 K45 ["PluginPolicyService"]
      169 NAMECALL                         R21 R21 K41 ["GetService"]
      171 CALL                             R21 2 1
      172 GETTABLEKS                       R22 R16 K15 ["new"]
      174 MOVE                             R23 R17
      175 MOVE                             R24 R18
      176 MOVE                             R25 R20
      177 MOVE                             R26 R19
      178 MOVE                             R27 R21
      179 CALL                             R22 5 1
      180 LOADNIL                          R23
      181 NEWCLOSURE                       R24 P0
      182 CAPTURE                          REF R23
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R13
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R22
      189 CLOSEUPVALS                      R23
      190 RETURN                           R24 1
