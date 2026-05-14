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
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["createUnimplemented"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["PropertyInteraction"]
       23 GETTABLEKS                       R4 R4 K10 ["genericMultiplePart"]
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K15 [{"Vector2", "Vector3", "CombinedColor", "InstanceRef"}]
       27 DUPTABLE                         R5 K18 [{"fromValue", "allMultiple"}]
       28 MOVE                             R6 R2
       29 LOADK                            R7 K19 ["getPlaceHolderPartsFromVector2"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K16 ["fromValue"]
       33 DUPTABLE                         R6 K23 [{"value", "x", "y"}]
       34 SETTABLEKS                       R3 R6 K20 ["value"]
       36 SETTABLEKS                       R3 R6 K21 ["x"]
       38 SETTABLEKS                       R3 R6 K22 ["y"]
       40 SETTABLEKS                       R6 R5 K17 ["allMultiple"]
       42 SETTABLEKS                       R5 R4 K11 ["Vector2"]
       44 DUPTABLE                         R5 K18 [{"fromValue", "allMultiple"}]
       45 MOVE                             R6 R2
       46 LOADK                            R7 K24 ["getPlaceHolderPartsFromVector3"]
       47 CALL                             R6 1 1
       48 SETTABLEKS                       R6 R5 K16 ["fromValue"]
       50 DUPTABLE                         R6 K26 [{"value", "x", "y", "z"}]
       51 SETTABLEKS                       R3 R6 K20 ["value"]
       53 SETTABLEKS                       R3 R6 K21 ["x"]
       55 SETTABLEKS                       R3 R6 K22 ["y"]
       57 SETTABLEKS                       R3 R6 K25 ["z"]
       59 SETTABLEKS                       R6 R5 K17 ["allMultiple"]
       61 SETTABLEKS                       R5 R4 K12 ["Vector3"]
       63 DUPTABLE                         R5 K18 [{"fromValue", "allMultiple"}]
       64 MOVE                             R6 R2
       65 LOADK                            R7 K27 ["getPlaceHolderPartsFromCombinedColor"]
       66 CALL                             R6 1 1
       67 SETTABLEKS                       R6 R5 K16 ["fromValue"]
       69 DUPTABLE                         R6 K37 [{"value", "color3", "r", "g", "b", "h", "s", "v", "brickColor", "transparency"}]
       70 SETTABLEKS                       R3 R6 K20 ["value"]
       72 SETTABLEKS                       R3 R6 K28 ["color3"]
       74 SETTABLEKS                       R3 R6 K29 ["r"]
       76 SETTABLEKS                       R3 R6 K30 ["g"]
       78 SETTABLEKS                       R3 R6 K31 ["b"]
       80 SETTABLEKS                       R3 R6 K32 ["h"]
       82 SETTABLEKS                       R3 R6 K33 ["s"]
       84 SETTABLEKS                       R3 R6 K34 ["v"]
       86 SETTABLEKS                       R3 R6 K35 ["brickColor"]
       88 SETTABLEKS                       R3 R6 K36 ["transparency"]
       90 SETTABLEKS                       R6 R5 K17 ["allMultiple"]
       92 SETTABLEKS                       R5 R4 K13 ["CombinedColor"]
       94 DUPTABLE                         R5 K18 [{"fromValue", "allMultiple"}]
       95 MOVE                             R6 R2
       96 LOADK                            R7 K38 ["getPlaceHolderPartsFromInstanceRef"]
       97 CALL                             R6 1 1
       98 SETTABLEKS                       R6 R5 K16 ["fromValue"]
      100 DUPTABLE                         R6 K45 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
      101 SETTABLEKS                       R3 R6 K20 ["value"]
      103 SETTABLEKS                       R3 R6 K39 ["className"]
      105 SETTABLEKS                       R3 R6 K40 ["name"]
      107 SETTABLEKS                       R3 R6 K41 ["isAutoUpdatedPackageLink"]
      109 SETTABLEKS                       R3 R6 K42 ["isClientScript"]
      111 SETTABLEKS                       R3 R6 K43 ["isDisabledScript"]
      113 SETTABLEKS                       R3 R6 K44 ["isHiddenGui"]
      115 SETTABLEKS                       R6 R5 K17 ["allMultiple"]
      117 SETTABLEKS                       R5 R4 K14 ["InstanceRef"]
      119 DUPCLOSURE                       R5 K46 [PROTO_0]
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R3
      122 RETURN                           R5 1
