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
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K7 ["Packages"]
       29 GETTABLEKS                       R5 R5 K10 ["Rodux"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K11 ["Src"]
       36 GETTABLEKS                       R6 R6 K12 ["Reducers"]
       38 GETTABLEKS                       R6 R6 K13 ["MainReducer"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R4 K14 ["Store"]
       43 GETTABLEKS                       R6 R6 K15 ["new"]
       45 MOVE                             R7 R5
       46 LOADNIL                          R8
       47 NEWTABLE                         R9 0 1
       49 GETTABLEKS                       R10 R4 K16 ["thunkMiddleware"]
       51 SETLIST                          R9 R10 1 [1]
       53 CALL                             R6 3 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K17 ["Resources"]
       60 GETTABLEKS                       R8 R8 K18 ["makeTheme"]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R8 R0 K11 ["Src"]
       65 GETTABLEKS                       R8 R8 K17 ["Resources"]
       67 GETTABLEKS                       R8 R8 K19 ["SourceStrings"]
       69 GETTABLEKS                       R9 R0 K11 ["Src"]
       71 GETTABLEKS                       R9 R9 K17 ["Resources"]
       73 GETTABLEKS                       R9 R9 K20 ["LocalizedStrings"]
       75 GETTABLEKS                       R10 R3 K21 ["Localization"]
       77 GETTABLEKS                       R11 R10 K15 ["new"]
       79 DUPTABLE                         R12 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       80 SETTABLEKS                       R8 R12 K22 ["stringResourceTable"]
       82 SETTABLEKS                       R9 R12 K23 ["translationResourceTable"]
       84 LOADK                            R13 K26 ["PluginInstallation"]
       85 SETTABLEKS                       R13 R12 K24 ["pluginName"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K4 [require]
       90 GETTABLEKS                       R13 R0 K7 ["Packages"]
       92 GETTABLEKS                       R13 R13 K27 ["Http"]
       94 CALL                             R12 1 1
       95 GETTABLEKS                       R13 R12 K28 ["API"]
       97 GETTABLEKS                       R13 R13 K15 ["new"]
       99 DUPTABLE                         R14 K30 [{"networking"}]
      100 GETTABLEKS                       R15 R12 K31 ["Networking"]
      102 GETTABLEKS                       R15 R15 K15 ["new"]
      104 DUPTABLE                         R16 K34 [{"isInternal", "loggingLevel"}]
      105 LOADB                            R17 1
      106 SETTABLEKS                       R17 R16 K32 ["isInternal"]
      108 LOADN                            R17 0
      109 SETTABLEKS                       R17 R16 K33 ["loggingLevel"]
      111 CALL                             R15 1 1
      112 SETTABLEKS                       R15 R14 K29 ["networking"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K4 [require]
      117 GETTABLEKS                       R15 R0 K11 ["Src"]
      119 GETTABLEKS                       R15 R15 K35 ["Util"]
      121 GETTABLEKS                       R15 R15 K36 ["getAnalyticsContextItem"]
      123 CALL                             R14 1 1
      124 MOVE                             R15 R14
      125 CALL                             R15 0 1
      126 LOADNIL                          R16
      127 MOVE                             R17 R1
      128 CALL                             R17 0 1
      129 JUMPIFNOT                        R17 ; [+48]
      130 GETIMPORT                        R17 K4 [require]
      132 GETTABLEKS                       R18 R0 K11 ["Src"]
      134 GETTABLEKS                       R18 R18 K35 ["Util"]
      136 GETTABLEKS                       R18 R18 K37 ["PluginManagementApi"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K39 [game]
      141 LOADK                            R20 K40 ["StudioService"]
      142 NAMECALL                         R18 R18 K41 ["GetService"]
      144 CALL                             R18 2 1
      145 GETIMPORT                        R19 K39 [game]
      147 LOADK                            R21 K42 ["PluginManagementService"]
      148 NAMECALL                         R19 R19 K41 ["GetService"]
      150 CALL                             R19 2 1
      151 GETIMPORT                        R20 K39 [game]
      153 LOADK                            R22 K43 ["MarketplaceService"]
      154 NAMECALL                         R20 R20 K41 ["GetService"]
      156 CALL                             R20 2 1
      157 GETIMPORT                        R21 K39 [game]
      159 LOADK                            R23 K44 ["PermissionsService"]
      160 NAMECALL                         R21 R21 K41 ["GetService"]
      162 CALL                             R21 2 1
      163 GETIMPORT                        R22 K39 [game]
      165 LOADK                            R24 K45 ["PluginPolicyService"]
      166 NAMECALL                         R22 R22 K41 ["GetService"]
      168 CALL                             R22 2 1
      169 GETTABLEKS                       R23 R17 K15 ["new"]
      171 MOVE                             R24 R18
      172 MOVE                             R25 R19
      173 MOVE                             R26 R21
      174 MOVE                             R27 R20
      175 MOVE                             R28 R22
      176 CALL                             R23 5 1
      177 MOVE                             R16 R23
      178 LOADNIL                          R17
      179 NEWCLOSURE                       R18 P0
      180 CAPTURE                          REF R17
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R15
      186 CAPTURE                          REF R16
      187 CLOSEUPVALS                      R16
      188 RETURN                           R18 1
