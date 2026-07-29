PROTO_0:
        0 DUPTABLE                         R1 K1 [{"value"}]
        1 DUPTABLE                         R2 K4 [{[1], ["multiple"] = False}]
        2 SETTABLEKS                       R0 R2 K0 ["value"]
        4 SETTABLEKS                       R2 R1 K0 ["value"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 JUMPIFNOT                        R2 ; [+9]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R4 R2 K0 ["fromValue"]
       10 MOVE                             R5 R1
       11 CALL                             R4 1 1
       12 RETURN                           R4 1
       13 GETTABLEKS                       R4 R2 K1 ["allMultiple"]
       15 RETURN                           R4 1
       16 JUMPIFNOT                        R3 ; [+7]
       17 DUPTABLE                         R4 K3 [{"value"}]
       18 DUPTABLE                         R5 K6 [{["value"], ["multiple"] = False}]
       19 SETTABLEKS                       R1 R5 K2 ["value"]
       21 SETTABLEKS                       R5 R4 K2 ["value"]
       23 RETURN                           R4 1
       24 GETUPVAL                         R4 1
       25 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["CFrameAggregateParts"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K7 ["AggregatePartsTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["PropertyInteraction"]
       37 GETTABLEKS                       R6 R6 K12 ["genericMultiplePart"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R4 K13 ["createUnimplemented"]
       42 DUPCLOSURE                       R7 K14 [PROTO_0]
       43 DUPTABLE                         R8 K16 [{"value"}]
       44 SETTABLEKS                       R5 R8 K15 ["value"]
       46 DUPTABLE                         R9 K22 [{"Vector2", "Vector3", "CombinedColor", "InstanceRef", "CFrame"}]
       47 DUPTABLE                         R10 K25 [{"fromValue", "allMultiple"}]
       48 MOVE                             R11 R6
       49 LOADK                            R12 K26 ["getAggregatePartsFromVector2"]
       50 CALL                             R11 1 1
       51 SETTABLEKS                       R11 R10 K23 ["fromValue"]
       53 DUPTABLE                         R11 K29 [{"value", "x", "y"}]
       54 SETTABLEKS                       R5 R11 K15 ["value"]
       56 SETTABLEKS                       R5 R11 K27 ["x"]
       58 SETTABLEKS                       R5 R11 K28 ["y"]
       60 SETTABLEKS                       R11 R10 K24 ["allMultiple"]
       62 SETTABLEKS                       R10 R9 K17 ["Vector2"]
       64 DUPTABLE                         R10 K25 [{"fromValue", "allMultiple"}]
       65 MOVE                             R11 R6
       66 LOADK                            R12 K30 ["getAggregatePartsFromVector3"]
       67 CALL                             R11 1 1
       68 SETTABLEKS                       R11 R10 K23 ["fromValue"]
       70 DUPTABLE                         R11 K32 [{"value", "x", "y", "z"}]
       71 SETTABLEKS                       R5 R11 K15 ["value"]
       73 SETTABLEKS                       R5 R11 K27 ["x"]
       75 SETTABLEKS                       R5 R11 K28 ["y"]
       77 SETTABLEKS                       R5 R11 K31 ["z"]
       79 SETTABLEKS                       R11 R10 K24 ["allMultiple"]
       81 SETTABLEKS                       R10 R9 K18 ["Vector3"]
       83 DUPTABLE                         R10 K25 [{"fromValue", "allMultiple"}]
       84 MOVE                             R11 R6
       85 LOADK                            R12 K33 ["getAggregatePartsFromCombinedColor"]
       86 CALL                             R11 1 1
       87 SETTABLEKS                       R11 R10 K23 ["fromValue"]
       89 DUPTABLE                         R11 K43 [{"value", "color3", "r", "g", "b", "h", "s", "v", "brickColor", "transparency"}]
       90 SETTABLEKS                       R5 R11 K15 ["value"]
       92 SETTABLEKS                       R5 R11 K34 ["color3"]
       94 SETTABLEKS                       R5 R11 K35 ["r"]
       96 SETTABLEKS                       R5 R11 K36 ["g"]
       98 SETTABLEKS                       R5 R11 K37 ["b"]
      100 SETTABLEKS                       R5 R11 K38 ["h"]
      102 SETTABLEKS                       R5 R11 K39 ["s"]
      104 SETTABLEKS                       R5 R11 K40 ["v"]
      106 SETTABLEKS                       R5 R11 K41 ["brickColor"]
      108 SETTABLEKS                       R5 R11 K42 ["transparency"]
      110 SETTABLEKS                       R11 R10 K24 ["allMultiple"]
      112 SETTABLEKS                       R10 R9 K19 ["CombinedColor"]
      114 DUPTABLE                         R10 K25 [{"fromValue", "allMultiple"}]
      115 MOVE                             R11 R6
      116 LOADK                            R12 K44 ["getAggregatePartsFromInstanceRef"]
      117 CALL                             R11 1 1
      118 SETTABLEKS                       R11 R10 K23 ["fromValue"]
      120 DUPTABLE                         R11 K51 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
      121 SETTABLEKS                       R5 R11 K15 ["value"]
      123 SETTABLEKS                       R5 R11 K45 ["className"]
      125 SETTABLEKS                       R5 R11 K46 ["name"]
      127 SETTABLEKS                       R5 R11 K47 ["isAutoUpdatedPackageLink"]
      129 SETTABLEKS                       R5 R11 K48 ["isClientScript"]
      131 SETTABLEKS                       R5 R11 K49 ["isDisabledScript"]
      133 SETTABLEKS                       R5 R11 K50 ["isHiddenGui"]
      135 SETTABLEKS                       R11 R10 K24 ["allMultiple"]
      137 SETTABLEKS                       R10 R9 K20 ["InstanceRef"]
      139 SETTABLEKS                       R1 R9 K21 ["CFrame"]
      141 DUPCLOSURE                       R10 K52 [PROTO_1]
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R8
      144 RETURN                           R10 1
