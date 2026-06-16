PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+14]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R3 0
        6 GETTABLE                         R2 R3 R0
        7 GETTABLEKS                       R2 R2 K0 ["allMultiple"]
        9 RETURN                           R2 1
       10 DUPTABLE                         R2 K2 [{"value"}]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K1 ["value"]
       14 RETURN                           R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLE                         R2 R3 R0
       17 GETTABLEKS                       R2 R2 K3 ["fromValue"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["PropertyInteraction"]
       23 GETTABLEKS                       R4 R4 K10 ["genericMultiplePart"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K11 ["createUnimplemented"]
       28 DUPTABLE                         R5 K16 [{"Vector2", "Vector3", "CombinedColor", "InstanceRef"}]
       29 DUPTABLE                         R6 K19 [{"fromValue", "allMultiple"}]
       30 MOVE                             R7 R4
       31 LOADK                            R8 K20 ["getPlaceHolderPartsFromVector2"]
       32 CALL                             R7 1 1
       33 SETTABLEKS                       R7 R6 K17 ["fromValue"]
       35 DUPTABLE                         R7 K24 [{"value", "x", "y"}]
       36 SETTABLEKS                       R3 R7 K21 ["value"]
       38 SETTABLEKS                       R3 R7 K22 ["x"]
       40 SETTABLEKS                       R3 R7 K23 ["y"]
       42 SETTABLEKS                       R7 R6 K18 ["allMultiple"]
       44 SETTABLEKS                       R6 R5 K12 ["Vector2"]
       46 DUPTABLE                         R6 K19 [{"fromValue", "allMultiple"}]
       47 MOVE                             R7 R4
       48 LOADK                            R8 K25 ["getPlaceHolderPartsFromVector3"]
       49 CALL                             R7 1 1
       50 SETTABLEKS                       R7 R6 K17 ["fromValue"]
       52 DUPTABLE                         R7 K27 [{"value", "x", "y", "z"}]
       53 SETTABLEKS                       R3 R7 K21 ["value"]
       55 SETTABLEKS                       R3 R7 K22 ["x"]
       57 SETTABLEKS                       R3 R7 K23 ["y"]
       59 SETTABLEKS                       R3 R7 K26 ["z"]
       61 SETTABLEKS                       R7 R6 K18 ["allMultiple"]
       63 SETTABLEKS                       R6 R5 K13 ["Vector3"]
       65 DUPTABLE                         R6 K19 [{"fromValue", "allMultiple"}]
       66 MOVE                             R7 R4
       67 LOADK                            R8 K28 ["getPlaceHolderPartsFromCombinedColor"]
       68 CALL                             R7 1 1
       69 SETTABLEKS                       R7 R6 K17 ["fromValue"]
       71 DUPTABLE                         R7 K38 [{"value", "color3", "r", "g", "b", "h", "s", "v", "brickColor", "transparency"}]
       72 SETTABLEKS                       R3 R7 K21 ["value"]
       74 SETTABLEKS                       R3 R7 K29 ["color3"]
       76 SETTABLEKS                       R3 R7 K30 ["r"]
       78 SETTABLEKS                       R3 R7 K31 ["g"]
       80 SETTABLEKS                       R3 R7 K32 ["b"]
       82 SETTABLEKS                       R3 R7 K33 ["h"]
       84 SETTABLEKS                       R3 R7 K34 ["s"]
       86 SETTABLEKS                       R3 R7 K35 ["v"]
       88 SETTABLEKS                       R3 R7 K36 ["brickColor"]
       90 SETTABLEKS                       R3 R7 K37 ["transparency"]
       92 SETTABLEKS                       R7 R6 K18 ["allMultiple"]
       94 SETTABLEKS                       R6 R5 K14 ["CombinedColor"]
       96 DUPTABLE                         R6 K19 [{"fromValue", "allMultiple"}]
       97 MOVE                             R7 R4
       98 LOADK                            R8 K39 ["getPlaceHolderPartsFromInstanceRef"]
       99 CALL                             R7 1 1
      100 SETTABLEKS                       R7 R6 K17 ["fromValue"]
      102 DUPTABLE                         R7 K46 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
      103 SETTABLEKS                       R3 R7 K21 ["value"]
      105 SETTABLEKS                       R3 R7 K40 ["className"]
      107 SETTABLEKS                       R3 R7 K41 ["name"]
      109 SETTABLEKS                       R3 R7 K42 ["isAutoUpdatedPackageLink"]
      111 SETTABLEKS                       R3 R7 K43 ["isClientScript"]
      113 SETTABLEKS                       R3 R7 K44 ["isDisabledScript"]
      115 SETTABLEKS                       R3 R7 K45 ["isHiddenGui"]
      117 SETTABLEKS                       R7 R6 K18 ["allMultiple"]
      119 SETTABLEKS                       R6 R5 K15 ["InstanceRef"]
      121 DUPCLOSURE                       R6 K47 [PROTO_0]
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R3
      124 RETURN                           R6 1
