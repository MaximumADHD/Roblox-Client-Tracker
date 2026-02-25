PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["frameRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 GETIMPORT                        R2 K4 [UDim2.new]
        7 LOADN                            R3 1
        8 LOADN                            R4 0
        9 LOADN                            R5 0
       10 GETTABLEKS                       R7 R0 K5 ["AbsoluteContentSize"]
       12 GETTABLEKS                       R6 R7 K6 ["y"]
       14 CALL                             R2 4 1
       15 SETTABLEKS                       R2 R1 K7 ["Size"]
       17 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 LOADK                            R3 K1 ["UIListLayout"]
        6 NEWTABLE                         R4 1 0
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K2 ["Change"]
       11 GETTABLEKS                       R5 R6 K3 ["AbsoluteContentSize"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R0
       15 SETTABLE                         R6 R4 R5
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K4 ["UIListLayoutVertical"]
       19 GETTABLEKS                       R3 R0 K5 ["props"]
       21 GETTABLEKS                       R2 R3 K6 ["StateTemplates"]
       23 JUMPIFNOT                        R2 ; [+82]
       24 GETTABLEKS                       R4 R0 K5 ["props"]
       26 GETTABLEKS                       R3 R4 K6 ["StateTemplates"]
       28 GETTABLEKS                       R2 R3 K7 ["templates"]
       30 JUMPIFNOT                        R2 ; [+75]
       31 GETIMPORT                        R2 K9 [pairs]
       33 GETTABLEKS                       R6 R0 K5 ["props"]
       35 GETTABLEKS                       R5 R6 K6 ["StateTemplates"]
       37 GETTABLEKS                       R3 R5 K7 ["templates"]
       39 CALL                             R2 1 3
       40 FORGPREP_NEXT                    R2
       41 FASTCALL1                        TOSTRING R5 ; [+3]
       42 MOVE                             R8 R5
       43 GETIMPORT                        R7 K11 [tostring]
       45 CALL                             R7 1 1
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R8 R9 K0 ["createElement"]
       49 GETUPVAL                         R9 1
       50 DUPTABLE                         R10 K20 [{"ThemeData", "template", "StateTemplates", "IsEnabled", "IsGameShutdownRequired", "AssetOverrideErrors", "Mouse", "IsPlacePublished", "clobberTemplate"}]
       51 GETTABLEKS                       R12 R0 K5 ["props"]
       53 GETTABLEKS                       R11 R12 K12 ["ThemeData"]
       55 SETTABLEKS                       R11 R10 K12 ["ThemeData"]
       57 SETTABLEKS                       R5 R10 K13 ["template"]
       59 GETTABLEKS                       R12 R0 K5 ["props"]
       61 GETTABLEKS                       R11 R12 K6 ["StateTemplates"]
       63 SETTABLEKS                       R11 R10 K6 ["StateTemplates"]
       65 GETTABLEKS                       R12 R0 K5 ["props"]
       67 GETTABLEKS                       R11 R12 K14 ["IsEnabled"]
       69 SETTABLEKS                       R11 R10 K14 ["IsEnabled"]
       71 GETTABLEKS                       R12 R0 K5 ["props"]
       73 GETTABLEKS                       R11 R12 K15 ["IsGameShutdownRequired"]
       75 SETTABLEKS                       R11 R10 K15 ["IsGameShutdownRequired"]
       77 GETTABLEKS                       R12 R0 K5 ["props"]
       79 GETTABLEKS                       R11 R12 K16 ["AssetOverrideErrors"]
       81 SETTABLEKS                       R11 R10 K16 ["AssetOverrideErrors"]
       83 GETTABLEKS                       R12 R0 K5 ["props"]
       85 GETTABLEKS                       R11 R12 K17 ["Mouse"]
       87 SETTABLEKS                       R11 R10 K17 ["Mouse"]
       89 GETTABLEKS                       R12 R0 K5 ["props"]
       91 GETTABLEKS                       R11 R12 K18 ["IsPlacePublished"]
       93 SETTABLEKS                       R11 R10 K18 ["IsPlacePublished"]
       95 GETTABLEKS                       R12 R0 K5 ["props"]
       97 GETTABLEKS                       R11 R12 K19 ["clobberTemplate"]
       99 SETTABLEKS                       R11 R10 K19 ["clobberTemplate"]
      101 CALL                             R8 2 1
      102 SETTABLE                         R8 R1 R7
      103 JUMP                             ; [+2]
      104 FORGLOOP                         R2 2 ; [-64]
      106 GETUPVAL                         R3 0
      107 GETTABLEKS                       R2 R3 K0 ["createElement"]
      109 LOADK                            R3 K21 ["Frame"]
      110 NEWTABLE                         R4 4 0
      112 GETIMPORT                        R5 K24 [UDim2.new]
      114 LOADN                            R6 1
      115 LOADN                            R7 0
      116 LOADN                            R8 1
      117 LOADN                            R9 0
      118 CALL                             R5 4 1
      119 SETTABLEKS                       R5 R4 K25 ["Size"]
      121 LOADN                            R5 0
      122 SETTABLEKS                       R5 R4 K26 ["BorderSizePixel"]
      124 LOADN                            R5 1
      125 SETTABLEKS                       R5 R4 K27 ["BackgroundTransparency"]
      127 GETUPVAL                         R6 0
      128 GETTABLEKS                       R5 R6 K28 ["Ref"]
      130 GETTABLEKS                       R6 R0 K29 ["frameRef"]
      132 SETTABLE                         R6 R4 R5
      133 MOVE                             R5 R1
      134 CALL                             R2 3 -1
      135 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R5 K1 [script]
        9 GETTABLEKS                       R4 R5 K2 ["Parent"]
       11 GETTABLEKS                       R3 R4 K2 ["Parent"]
       13 GETTABLEKS                       R2 R3 K2 ["Parent"]
       15 GETTABLEKS                       R1 R2 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R4 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R4 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R5 R0 K7 ["Components"]
       28 GETTABLEKS                       R4 R5 K8 ["MorpherTemplate"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R2 K9 ["Component"]
       33 LOADK                            R6 K10 ["ComponentMorpherTemplateContainer"]
       34 NAMECALL                         R4 R4 K11 ["extend"]
       36 CALL                             R4 2 1
       37 DUPCLOSURE                       R5 K12 [PROTO_0]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R5 R4 K13 ["init"]
       41 DUPCLOSURE                       R5 K14 [PROTO_2]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R5 R4 K15 ["render"]
       46 RETURN                           R4 1
