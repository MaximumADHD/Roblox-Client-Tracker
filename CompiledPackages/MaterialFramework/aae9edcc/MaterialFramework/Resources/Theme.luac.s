PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R5 3
        9 MOVE                             R6 R2
       10 CALL                             R3 3 1
       11 MOVE                             R4 R3
       12 CALL                             R4 0 -1
       13 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mock"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 MOVE                             R5 R1
        9 CALL                             R2 3 1
       10 MOVE                             R3 R2
       11 CALL                             R3 0 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       29 GETTABLEKS                       R10 R8 K12 ["Themes"]
       31 GETTABLEKS                       R9 R10 K13 ["StudioTheme"]
       33 GETTABLEKS                       R10 R8 K14 ["makeTheme"]
       35 GETTABLEKS                       R11 R8 K15 ["StyleKey"]
       37 GETTABLEKS                       R12 R8 K16 ["getRawComponentStyle"]
       39 GETTABLEKS                       R13 R8 K17 ["ComponentSymbols"]
       41 GETIMPORT                        R14 K5 [require]
       43 GETTABLEKS                       R16 R0 K18 ["Flags"]
       45 GETTABLEKS                       R15 R16 K19 ["getFFlagMaterialPickerUIChanges"]
       47 CALL                             R14 1 1
       48 LOADNIL                          R15
       49 MOVE                             R16 R14
       50 CALL                             R16 0 1
       51 JUMPIFNOT                        R16 ; [+49]
       52 MOVE                             R16 R12
       53 LOADK                            R17 K20 ["Button"]
       54 CALL                             R16 1 1
       55 MOVE                             R17 R6
       56 GETTABLEKS                       R18 R16 K21 ["&RoundPrimary"]
       58 CALL                             R17 1 1
       59 GETTABLEKS                       R18 R17 K22 ["BackgroundStyle"]
       61 GETTABLEKS                       R19 R11 K23 ["BackgroundDefault"]
       63 SETTABLEKS                       R19 R18 K24 ["Color"]
       65 GETTABLEKS                       R20 R7 K25 ["Hover"]
       67 GETTABLE                         R19 R17 R20
       68 GETTABLEKS                       R18 R19 K22 ["BackgroundStyle"]
       70 GETTABLEKS                       R19 R11 K26 ["ButtonHover"]
       72 SETTABLEKS                       R19 R18 K24 ["Color"]
       74 MOVE                             R18 R6
       75 GETTABLEKS                       R19 R16 K27 ["&RoundActive"]
       77 CALL                             R18 1 1
       78 GETTABLEKS                       R19 R18 K22 ["BackgroundStyle"]
       80 GETTABLEKS                       R20 R11 K23 ["BackgroundDefault"]
       82 SETTABLEKS                       R20 R19 K24 ["Color"]
       84 GETTABLEKS                       R19 R4 K28 ["join"]
       86 MOVE                             R20 R16
       87 NEWTABLE                         R21 2 0
       89 SETTABLEKS                       R17 R21 K29 ["&RoundApplied"]
       91 SETTABLEKS                       R18 R21 K30 ["&RoundActiveApplied"]
       93 CALL                             R19 2 1
       94 NEWTABLE                         R20 1 0
       96 GETTABLEKS                       R21 R13 K20 ["Button"]
       98 SETTABLE                         R19 R20 R21
       99 MOVE                             R15 R20
      100 JUMP                             ; [+2]
      101 NEWTABLE                         R15 0 0
      103 NEWTABLE                         R16 2 0
      105 NEWCLOSURE                       R17 P0
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R2
      109 CAPTURE                          REF R15
      110 SETTABLEKS                       R17 R16 K31 ["new"]
      112 NEWCLOSURE                       R17 P1
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R2
      116 CAPTURE                          REF R15
      117 SETTABLEKS                       R17 R16 K32 ["mock"]
      119 CLOSEUPVALS                      R15
      120 RETURN                           R16 1
