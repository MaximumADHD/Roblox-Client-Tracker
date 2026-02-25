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
       15 DUPTABLE                         R1 K11 [{"plugin", "localization", "theme", "store", "api", "mouse", "focusGui", "analytics"}]
       16 SETTABLEKS                       R0 R1 K3 ["plugin"]
       18 GETUPVAL                         R2 1
       19 SETTABLEKS                       R2 R1 K4 ["localization"]
       21 GETUPVAL                         R2 2
       22 SETTABLEKS                       R2 R1 K5 ["theme"]
       24 GETUPVAL                         R2 3
       25 SETTABLEKS                       R2 R1 K6 ["store"]
       27 GETUPVAL                         R2 4
       28 SETTABLEKS                       R2 R1 K7 ["api"]
       30 NAMECALL                         R2 R0 K12 ["GetMouse"]
       32 CALL                             R2 1 1
       33 SETTABLEKS                       R2 R1 K8 ["mouse"]
       35 NEWTABLE                         R2 0 0
       37 SETTABLEKS                       R2 R1 K9 ["focusGui"]
       39 GETUPVAL                         R2 5
       40 SETTABLEKS                       R2 R1 K10 ["analytics"]
       42 SETUPVAL                         R1 0
       43 GETUPVAL                         R1 0
       44 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["ContextServices"]
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Packages"]
       22 GETTABLEKS                       R4 R5 K8 ["Rodux"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R7 R0 K9 ["Src"]
       29 GETTABLEKS                       R6 R7 K10 ["Reducers"]
       31 GETTABLEKS                       R5 R6 K11 ["MainReducer"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R6 R3 K12 ["Store"]
       36 GETTABLEKS                       R5 R6 K13 ["new"]
       38 MOVE                             R6 R4
       39 LOADNIL                          R7
       40 NEWTABLE                         R8 0 1
       42 GETTABLEKS                       R9 R3 K14 ["thunkMiddleware"]
       44 SETLIST                          R8 R9 1 [1]
       46 CALL                             R5 3 1
       47 GETIMPORT                        R6 K4 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Src"]
       51 GETTABLEKS                       R8 R9 K15 ["Resources"]
       53 GETTABLEKS                       R7 R8 K16 ["makeTheme"]
       55 CALL                             R6 1 1
       56 GETTABLEKS                       R9 R0 K9 ["Src"]
       58 GETTABLEKS                       R8 R9 K15 ["Resources"]
       60 GETTABLEKS                       R7 R8 K17 ["SourceStrings"]
       62 GETTABLEKS                       R10 R0 K9 ["Src"]
       64 GETTABLEKS                       R9 R10 K15 ["Resources"]
       66 GETTABLEKS                       R8 R9 K18 ["LocalizedStrings"]
       68 GETTABLEKS                       R9 R2 K19 ["Localization"]
       70 GETTABLEKS                       R10 R9 K13 ["new"]
       72 DUPTABLE                         R11 K23 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       73 SETTABLEKS                       R7 R11 K20 ["stringResourceTable"]
       75 SETTABLEKS                       R8 R11 K21 ["translationResourceTable"]
       77 LOADK                            R12 K24 ["PluginInstallation"]
       78 SETTABLEKS                       R12 R11 K22 ["pluginName"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K4 [require]
       83 GETTABLEKS                       R13 R0 K5 ["Packages"]
       85 GETTABLEKS                       R12 R13 K25 ["Http"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R13 R11 K26 ["API"]
       90 GETTABLEKS                       R12 R13 K13 ["new"]
       92 DUPTABLE                         R13 K28 [{"networking"}]
       93 GETTABLEKS                       R15 R11 K29 ["Networking"]
       95 GETTABLEKS                       R14 R15 K13 ["new"]
       97 DUPTABLE                         R15 K32 [{"isInternal", "loggingLevel"}]
       98 LOADB                            R16 1
       99 SETTABLEKS                       R16 R15 K30 ["isInternal"]
      101 LOADN                            R16 0
      102 SETTABLEKS                       R16 R15 K31 ["loggingLevel"]
      104 CALL                             R14 1 1
      105 SETTABLEKS                       R14 R13 K27 ["networking"]
      107 CALL                             R12 1 1
      108 GETIMPORT                        R13 K4 [require]
      110 GETTABLEKS                       R16 R0 K9 ["Src"]
      112 GETTABLEKS                       R15 R16 K33 ["Util"]
      114 GETTABLEKS                       R14 R15 K34 ["getAnalyticsContextItem"]
      116 CALL                             R13 1 1
      117 MOVE                             R14 R13
      118 CALL                             R14 0 1
      119 LOADNIL                          R15
      120 NEWCLOSURE                       R16 P0
      121 CAPTURE                          REF R15
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R14
      127 CLOSEUPVALS                      R15
      128 RETURN                           R16 1
