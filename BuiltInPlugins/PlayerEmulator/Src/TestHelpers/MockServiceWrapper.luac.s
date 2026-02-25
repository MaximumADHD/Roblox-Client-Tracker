PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["localization"]
        4 JUMPIF                           R1 ; [+7]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["Localization"]
        8 GETTABLEKS                       R2 R3 K3 ["mock"]
       10 CALL                             R2 0 1
       11 MOVE                             R1 R2
       12 GETTABLEKS                       R3 R0 K0 ["props"]
       14 GETTABLEKS                       R2 R3 K4 ["plugin"]
       16 JUMPIF                           R2 ; [+5]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K5 ["new"]
       20 CALL                             R3 0 1
       21 MOVE                             R2 R3
       22 GETTABLEKS                       R4 R0 K0 ["props"]
       24 GETTABLEKS                       R3 R4 K6 ["focusGui"]
       26 JUMPIF                           R3 ; [+4]
       27 GETIMPORT                        R3 K8 [Instance.new]
       29 LOADK                            R4 K9 ["ScreenGui"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R5 R0 K0 ["props"]
       33 GETTABLEKS                       R4 R5 K10 ["storeState"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R6 R7 K11 ["Store"]
       38 GETTABLEKS                       R5 R6 K5 ["new"]
       40 GETUPVAL                         R6 3
       41 CALL                             R6 0 1
       42 MOVE                             R7 R4
       43 NEWTABLE                         R8 0 1
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R9 R10 K12 ["thunkMiddleware"]
       48 SETLIST                          R8 R9 1 [1]
       50 CALL                             R5 3 1
       51 GETUPVAL                         R8 4
       52 GETTABLEKS                       R7 R8 K13 ["Networking"]
       54 GETTABLEKS                       R6 R7 K3 ["mock"]
       56 CALL                             R6 0 1
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R7 R8 K14 ["provide"]
       60 NEWTABLE                         R8 0 7
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R10 R11 K15 ["Plugin"]
       65 GETTABLEKS                       R9 R10 K5 ["new"]
       67 MOVE                             R10 R2
       68 CALL                             R9 1 1
       69 GETUPVAL                         R12 0
       70 GETTABLEKS                       R11 R12 K16 ["Focus"]
       72 GETTABLEKS                       R10 R11 K5 ["new"]
       74 MOVE                             R11 R3
       75 CALL                             R10 1 1
       76 GETUPVAL                         R11 5
       77 CALL                             R11 0 1
       78 MOVE                             R12 R1
       79 GETUPVAL                         R15 0
       80 GETTABLEKS                       R14 R15 K11 ["Store"]
       82 GETTABLEKS                       R13 R14 K5 ["new"]
       84 MOVE                             R14 R5
       85 CALL                             R13 1 1
       86 GETUPVAL                         R15 6
       87 GETTABLEKS                       R14 R15 K5 ["new"]
       89 MOVE                             R15 R6
       90 CALL                             R14 1 1
       91 GETUPVAL                         R17 0
       92 GETTABLEKS                       R16 R17 K17 ["Mouse"]
       94 GETTABLEKS                       R15 R16 K5 ["new"]
       96 NAMECALL                         R16 R2 K18 ["GetMouse"]
       98 CALL                             R16 1 -1
       99 CALL                             R15 -1 -1
      100 SETLIST                          R8 R9 -1 [1]
      102 GETTABLEKS                       R10 R0 K0 ["props"]
      104 GETUPVAL                         R12 7
      105 GETTABLEKS                       R11 R12 K19 ["Children"]
      107 GETTABLE                         R9 R10 R11
      108 CALL                             R7 2 -1
      109 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Reducers"]
       29 GETTABLEKS                       R4 R5 K10 ["createMainReducer"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R6 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R6 K11 ["Http"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["ContextServices"]
       45 GETTABLEKS                       R6 R7 K13 ["NetworkingContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R9 R0 K8 ["Src"]
       52 GETTABLEKS                       R8 R9 K14 ["Resources"]
       54 GETTABLEKS                       R7 R8 K15 ["MakeTheme"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K4 [require]
       59 GETTABLEKS                       R9 R0 K5 ["Packages"]
       61 GETTABLEKS                       R8 R9 K16 ["Framework"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R10 R7 K17 ["TestHelpers"]
       66 GETTABLEKS                       R9 R10 K18 ["Instances"]
       68 GETTABLEKS                       R8 R9 K19 ["MockPlugin"]
       70 GETTABLEKS                       R9 R7 K12 ["ContextServices"]
       72 GETTABLEKS                       R10 R1 K20 ["Component"]
       74 LOADK                            R12 K21 ["MockServiceWrapper"]
       75 NAMECALL                         R10 R10 K22 ["extend"]
       77 CALL                             R10 2 1
       78 DUPCLOSURE                       R11 K23 [PROTO_0]
       79 DUPCLOSURE                       R12 K24 [PROTO_1]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R12 R10 K25 ["render"]
       90 RETURN                           R10 1
