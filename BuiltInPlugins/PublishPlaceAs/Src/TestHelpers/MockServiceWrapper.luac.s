PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["localization"]
        4 JUMPIF                           R1 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["mock"]
        8 CALL                             R2 0 1
        9 MOVE                             R1 R2
       10 GETTABLEKS                       R2 R0 K0 ["props"]
       12 GETTABLEKS                       R2 R2 K3 ["storeState"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["Store"]
       17 GETTABLEKS                       R3 R3 K5 ["new"]
       19 GETUPVAL                         R4 2
       20 MOVE                             R5 R2
       21 GETUPVAL                         R6 3
       22 CALL                             R3 3 1
       23 GETTABLEKS                       R4 R0 K0 ["props"]
       25 GETTABLEKS                       R4 R4 K6 ["theme"]
       27 JUMPIF                           R4 ; [+4]
       28 GETUPVAL                         R5 4
       29 LOADB                            R6 1
       30 CALL                             R5 1 1
       31 MOVE                             R4 R5
       32 GETUPVAL                         R6 5
       33 JUMPIFNOT                        R6 ; [+14]
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R5 R5 K5 ["new"]
       37 DUPTABLE                         R6 K9 [{"plugin", "localization", "store"}]
       38 NEWTABLE                         R7 0 0
       40 SETTABLEKS                       R7 R6 K7 ["plugin"]
       42 SETTABLEKS                       R1 R6 K1 ["localization"]
       44 SETTABLEKS                       R3 R6 K8 ["store"]
       46 CALL                             R5 1 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R5
       49 GETUPVAL                         R6 6
       50 GETTABLEKS                       R6 R6 K10 ["createElement"]
       52 GETUPVAL                         R7 7
       53 DUPTABLE                         R8 K13 [{"localization", "plugin", "focusGui", "store", "theme", "publishStatusPanel"}]
       54 SETTABLEKS                       R1 R8 K1 ["localization"]
       56 NEWTABLE                         R9 0 0
       58 SETTABLEKS                       R9 R8 K7 ["plugin"]
       60 NEWTABLE                         R9 0 0
       62 SETTABLEKS                       R9 R8 K11 ["focusGui"]
       64 SETTABLEKS                       R3 R8 K8 ["store"]
       66 SETTABLEKS                       R4 R8 K6 ["theme"]
       68 SETTABLEKS                       R5 R8 K12 ["publishStatusPanel"]
       70 GETTABLEKS                       R10 R0 K0 ["props"]
       72 GETUPVAL                         R11 6
       73 GETTABLEKS                       R11 R11 K14 ["Children"]
       75 GETTABLE                         R9 R10 R11
       76 CALL                             R6 3 -1
       77 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Components"]
       36 GETTABLEKS                       R5 R5 K11 ["ServiceWrapper"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Resources"]
       45 GETTABLEKS                       R6 R6 K13 ["MakeTheme"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Reducers"]
       54 GETTABLEKS                       R7 R7 K15 ["MainReducer"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K4 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K16 ["Middleware"]
       63 GETTABLEKS                       R8 R8 K17 ["MainMiddleware"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K4 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K18 ["Flags"]
       72 GETTABLEKS                       R9 R9 K19 ["getEngineFeatureStudioUnifiedPublishAction"]
       74 CALL                             R8 1 1
       75 MOVE                             R10 R8
       76 CALL                             R10 0 1
       77 JUMPIFNOT                        R10 ; [+10]
       78 GETIMPORT                        R9 K4 [require]
       80 GETTABLEKS                       R10 R0 K9 ["Src"]
       82 GETTABLEKS                       R10 R10 K20 ["Util"]
       84 GETTABLEKS                       R10 R10 K21 ["PublishStatusPanel"]
       86 CALL                             R9 1 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R9
       89 GETTABLEKS                       R10 R3 K22 ["ContextServices"]
       91 GETTABLEKS                       R11 R10 K23 ["Localization"]
       93 GETTABLEKS                       R12 R1 K24 ["Component"]
       95 LOADK                            R14 K25 ["MockServiceWrapper"]
       96 NAMECALL                         R12 R12 K26 ["extend"]
       98 CALL                             R12 2 1
       99 DUPCLOSURE                       R13 K27 [PROTO_0]
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R13 R12 K28 ["render"]
      110 RETURN                           R12 1
