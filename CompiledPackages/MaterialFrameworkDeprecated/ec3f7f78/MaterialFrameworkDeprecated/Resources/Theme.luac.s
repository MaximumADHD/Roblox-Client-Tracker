PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R5 3
        9 MOVE                             R6 R2
       10 CALL                             R3 3 1
       11 CALL                             R3 0 -1
       12 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mock"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 MOVE                             R5 R1
        9 CALL                             R2 3 1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Components"]
       11 GETIMPORT                        R3 K5 [require]
       13 GETTABLEKS                       R4 R1 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K5 [require]
       18 GETTABLEKS                       R5 R1 K7 ["Dash"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R3 K8 ["Util"]
       23 GETTABLEKS                       R6 R5 K9 ["deepCopy"]
       25 GETTABLEKS                       R7 R5 K10 ["StyleModifier"]
       27 GETTABLEKS                       R8 R3 K11 ["Style"]
       29 GETTABLEKS                       R9 R8 K12 ["Themes"]
       31 GETTABLEKS                       R9 R9 K13 ["StudioTheme"]
       33 GETTABLEKS                       R10 R8 K14 ["makeTheme"]
       35 GETTABLEKS                       R11 R8 K15 ["StyleKey"]
       37 GETTABLEKS                       R12 R8 K16 ["getRawComponentStyle"]
       39 GETTABLEKS                       R13 R8 K17 ["ComponentSymbols"]
       41 MOVE                             R14 R12
       42 LOADK                            R15 K18 ["Button"]
       43 CALL                             R14 1 1
       44 MOVE                             R15 R6
       45 GETTABLEKS                       R16 R14 K19 ["&RoundPrimary"]
       47 CALL                             R15 1 1
       48 GETTABLEKS                       R16 R15 K20 ["BackgroundStyle"]
       50 GETTABLEKS                       R17 R11 K21 ["BackgroundDefault"]
       52 SETTABLEKS                       R17 R16 K22 ["Color"]
       54 GETTABLEKS                       R18 R7 K23 ["Hover"]
       56 GETTABLE                         R17 R15 R18
       57 GETTABLEKS                       R16 R17 K20 ["BackgroundStyle"]
       59 GETTABLEKS                       R17 R11 K24 ["ButtonHover"]
       61 SETTABLEKS                       R17 R16 K22 ["Color"]
       63 MOVE                             R16 R6
       64 GETTABLEKS                       R17 R14 K25 ["&RoundActive"]
       66 CALL                             R16 1 1
       67 GETTABLEKS                       R17 R16 K20 ["BackgroundStyle"]
       69 GETTABLEKS                       R18 R11 K21 ["BackgroundDefault"]
       71 SETTABLEKS                       R18 R17 K22 ["Color"]
       73 GETTABLEKS                       R17 R4 K26 ["join"]
       75 MOVE                             R18 R14
       76 NEWTABLE                         R19 2 0
       78 SETTABLEKS                       R15 R19 K27 ["&RoundApplied"]
       80 SETTABLEKS                       R16 R19 K28 ["&RoundActiveApplied"]
       82 CALL                             R17 2 1
       83 NEWTABLE                         R18 1 0
       85 GETTABLEKS                       R19 R13 K18 ["Button"]
       87 SETTABLE                         R17 R18 R19
       88 NEWTABLE                         R19 2 0
       90 DUPCLOSURE                       R20 K29 [PROTO_0]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R18
       95 SETTABLEKS                       R20 R19 K30 ["new"]
       97 DUPCLOSURE                       R20 K31 [PROTO_1]
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R18
      102 SETTABLEKS                       R20 R19 K32 ["mock"]
      104 RETURN                           R19 1
