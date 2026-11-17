PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["plugin"]
        4 JUMPIF                           R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["new"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K1 ["plugin"]
       11 GETIMPORT                        R1 K4 [Instance.new]
       13 LOADK                            R2 K5 ["ScreenGui"]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K6 ["focusGui"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K2 ["new"]
       20 DUPTABLE                         R2 K9 [{"AttachCallout", "DetachCalloutsByDefinitionId"}]
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 SETTABLEKS                       R3 R2 K7 ["AttachCallout"]
       24 DUPCLOSURE                       R3 K11 [PROTO_1]
       25 SETTABLEKS                       R3 R2 K8 ["DetachCalloutsByDefinitionId"]
       27 CALL                             R1 1 1
       28 SETTABLEKS                       R1 R0 K12 ["calloutController"]
       30 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["focusGui"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["calloutController"]
        7 NAMECALL                         R1 R1 K3 ["destroy"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K4 ["props"]
       12 GETTABLEKS                       R1 R1 K5 ["plugin"]
       14 JUMPIF                           R1 ; [+5]
       15 GETTABLEKS                       R1 R0 K5 ["plugin"]
       17 NAMECALL                         R1 R1 K1 ["Destroy"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_4:
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
       38 GETTABLEKS                       R7 R0 K7 ["plugin"]
       40 SETTABLEKS                       R7 R6 K7 ["plugin"]
       42 SETTABLEKS                       R1 R6 K1 ["localization"]
       44 SETTABLEKS                       R3 R6 K8 ["store"]
       46 CALL                             R5 1 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R5
       49 GETUPVAL                         R6 6
       50 GETTABLEKS                       R6 R6 K10 ["createElement"]
       52 GETUPVAL                         R7 7
       53 DUPTABLE                         R8 K15 [{"localization", "plugin", "focusGui", "mouse", "store", "theme", "publishStatusPanel", "calloutController"}]
       54 SETTABLEKS                       R1 R8 K1 ["localization"]
       56 GETTABLEKS                       R9 R0 K7 ["plugin"]
       58 SETTABLEKS                       R9 R8 K7 ["plugin"]
       60 GETTABLEKS                       R9 R0 K11 ["focusGui"]
       62 SETTABLEKS                       R9 R8 K11 ["focusGui"]
       64 GETTABLEKS                       R9 R0 K0 ["props"]
       66 GETTABLEKS                       R9 R9 K12 ["mouse"]
       68 JUMPIF                           R9 ; [+2]
       69 NEWTABLE                         R9 0 0
       71 SETTABLEKS                       R9 R8 K12 ["mouse"]
       73 SETTABLEKS                       R3 R8 K8 ["store"]
       75 SETTABLEKS                       R4 R8 K6 ["theme"]
       77 SETTABLEKS                       R5 R8 K13 ["publishStatusPanel"]
       79 GETTABLEKS                       R9 R0 K14 ["calloutController"]
       81 SETTABLEKS                       R9 R8 K14 ["calloutController"]
       83 GETTABLEKS                       R10 R0 K0 ["props"]
       85 GETUPVAL                         R11 6
       86 GETTABLEKS                       R11 R11 K16 ["Children"]
       88 GETTABLE                         R9 R10 R11
       89 CALL                             R6 3 -1
       90 RETURN                           R6 -1

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
       30 GETTABLEKS                       R4 R3 K9 ["TestHelpers"]
       32 GETTABLEKS                       R4 R4 K10 ["Instances"]
       34 GETTABLEKS                       R4 R4 K11 ["MockPlugin"]
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R0 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K13 ["Components"]
       42 GETTABLEKS                       R6 R6 K14 ["ServiceWrapper"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K12 ["Src"]
       49 GETTABLEKS                       R7 R7 K15 ["Resources"]
       51 GETTABLEKS                       R7 R7 K16 ["MakeTheme"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R0 K12 ["Src"]
       58 GETTABLEKS                       R8 R8 K17 ["Reducers"]
       60 GETTABLEKS                       R8 R8 K18 ["MainReducer"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R0 K12 ["Src"]
       67 GETTABLEKS                       R9 R9 K19 ["Middleware"]
       69 GETTABLEKS                       R9 R9 K20 ["MainMiddleware"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R10 R0 K12 ["Src"]
       76 GETTABLEKS                       R10 R10 K21 ["Util"]
       78 GETTABLEKS                       R10 R10 K22 ["CalloutController"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K4 [require]
       83 GETTABLEKS                       R11 R0 K12 ["Src"]
       85 GETTABLEKS                       R11 R11 K23 ["Flags"]
       87 GETTABLEKS                       R11 R11 K24 ["getEngineFeatureStudioUnifiedPublishAction"]
       89 CALL                             R10 1 1
       90 MOVE                             R12 R10
       91 CALL                             R12 0 1
       92 JUMPIFNOT                        R12 ; [+10]
       93 GETIMPORT                        R11 K4 [require]
       95 GETTABLEKS                       R12 R0 K12 ["Src"]
       97 GETTABLEKS                       R12 R12 K21 ["Util"]
       99 GETTABLEKS                       R12 R12 K25 ["PublishStatusPanel"]
      101 CALL                             R11 1 1
      102 JUMP                             ; [+1]
      103 LOADNIL                          R11
      104 GETTABLEKS                       R12 R3 K26 ["ContextServices"]
      106 GETTABLEKS                       R13 R12 K27 ["Localization"]
      108 GETTABLEKS                       R14 R1 K28 ["Component"]
      110 LOADK                            R16 K29 ["MockServiceWrapper"]
      111 NAMECALL                         R14 R14 K30 ["extend"]
      113 CALL                             R14 2 1
      114 DUPCLOSURE                       R15 K31 [PROTO_2]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R9
      117 SETTABLEKS                       R15 R14 K32 ["init"]
      119 DUPCLOSURE                       R15 K33 [PROTO_3]
      120 SETTABLEKS                       R15 R14 K34 ["willUnmount"]
      122 DUPCLOSURE                       R15 K35 [PROTO_4]
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R5
      131 SETTABLEKS                       R15 R14 K36 ["render"]
      133 RETURN                           R14 1
