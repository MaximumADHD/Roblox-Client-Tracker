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
       21 NEWTABLE                         R6 0 1
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K6 ["thunkMiddleware"]
       26 SETLIST                          R6 R7 1 [1]
       28 CALL                             R3 3 1
       29 GETTABLEKS                       R4 R0 K0 ["props"]
       31 GETTABLEKS                       R4 R4 K7 ["theme"]
       33 JUMPIF                           R4 ; [+4]
       34 GETUPVAL                         R5 3
       35 LOADB                            R6 1
       36 CALL                             R5 1 1
       37 MOVE                             R4 R5
       38 GETTABLEKS                       R5 R0 K0 ["props"]
       40 GETTABLEKS                       R5 R5 K8 ["networkInterface"]
       42 JUMPIF                           R5 ; [+4]
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K5 ["new"]
       46 CALL                             R5 0 1
       47 GETTABLEKS                       R6 R0 K0 ["props"]
       49 GETTABLEKS                       R6 R6 K9 ["plugin"]
       51 JUMPIF                           R6 ; [+2]
       52 NEWTABLE                         R6 0 0
       54 GETTABLEKS                       R7 R0 K0 ["props"]
       56 GETTABLEKS                       R7 R7 K10 ["mouse"]
       58 JUMPIF                           R7 ; [+2]
       59 NEWTABLE                         R7 0 0
       61 GETIMPORT                        R8 K12 [Instance.new]
       63 LOADK                            R9 K13 ["ScreenGui"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R10 R0 K0 ["props"]
       67 GETUPVAL                         R11 5
       68 GETTABLEKS                       R11 R11 K14 ["Children"]
       70 GETTABLE                         R9 R10 R11
       71 GETUPVAL                         R10 5
       72 GETTABLEKS                       R10 R10 K15 ["createElement"]
       74 GETUPVAL                         R11 6
       75 DUPTABLE                         R12 K18 [{"localization", "plugin", "mouse", "focusGui", "networkInterface", "store", "theme"}]
       76 SETTABLEKS                       R1 R12 K1 ["localization"]
       78 SETTABLEKS                       R6 R12 K9 ["plugin"]
       80 SETTABLEKS                       R7 R12 K10 ["mouse"]
       82 SETTABLEKS                       R8 R12 K16 ["focusGui"]
       84 SETTABLEKS                       R5 R12 K8 ["networkInterface"]
       86 SETTABLEKS                       R3 R12 K17 ["store"]
       88 SETTABLEKS                       R4 R12 K7 ["theme"]
       90 MOVE                             R13 R9
       91 CALL                             R10 3 -1
       92 RETURN                           R10 -1

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
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K11 ["Components"]
       38 GETTABLEKS                       R6 R6 K12 ["ServiceWrapper"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Src"]
       45 GETTABLEKS                       R7 R7 K13 ["Resources"]
       47 GETTABLEKS                       R7 R7 K14 ["MakeTheme"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Src"]
       54 GETTABLEKS                       R8 R8 K15 ["Reducers"]
       56 GETTABLEKS                       R8 R8 K16 ["MainReducer"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K4 [require]
       61 GETTABLEKS                       R9 R0 K10 ["Src"]
       63 GETTABLEKS                       R9 R9 K17 ["Networking"]
       65 GETTABLEKS                       R9 R9 K18 ["NetworkInterfaceMock"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R9 R4 K19 ["Localization"]
       70 GETTABLEKS                       R10 R1 K20 ["Component"]
       72 LOADK                            R12 K21 ["MockServiceWrapper"]
       73 NAMECALL                         R10 R10 K22 ["extend"]
       75 CALL                             R10 2 1
       76 DUPCLOSURE                       R11 K23 [PROTO_0]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R11 R10 K24 ["render"]
       86 RETURN                           R10 1
