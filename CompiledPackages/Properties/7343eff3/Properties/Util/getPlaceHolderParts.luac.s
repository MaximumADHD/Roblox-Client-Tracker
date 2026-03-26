PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+14]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R3 R4 R0
        7 GETTABLEKS                       R2 R3 K0 ["allMultiple"]
        9 RETURN                           R2 1
       10 DUPTABLE                         R2 K2 [{"value"}]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K1 ["value"]
       14 RETURN                           R2 1
       15 GETUPVAL                         R4 0
       16 GETTABLE                         R3 R4 R0
       17 GETTABLEKS                       R2 R3 K3 ["fromValue"]
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
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K7 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["createUnimplemented"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["genericMultiplePart"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K15 [{"Vector2", "Vector3", "CombinedColor", "InstanceRef"}]
       29 DUPTABLE                         R5 K18 [{"fromValue", "allMultiple"}]
       30 MOVE                             R6 R2
       31 LOADK                            R7 K19 ["getPlaceHolderPartsFromVector2"]
       32 CALL                             R6 1 1
       33 SETTABLEKS                       R6 R5 K16 ["fromValue"]
       35 DUPTABLE                         R6 K23 [{"value", "x", "y"}]
       36 SETTABLEKS                       R3 R6 K20 ["value"]
       38 SETTABLEKS                       R3 R6 K21 ["x"]
       40 SETTABLEKS                       R3 R6 K22 ["y"]
       42 SETTABLEKS                       R6 R5 K17 ["allMultiple"]
       44 SETTABLEKS                       R5 R4 K11 ["Vector2"]
       46 DUPTABLE                         R5 K18 [{"fromValue", "allMultiple"}]
       47 MOVE                             R6 R2
       48 LOADK                            R7 K24 ["getPlaceHolderPartsFromVector3"]
       49 CALL                             R6 1 1
       50 SETTABLEKS                       R6 R5 K16 ["fromValue"]
       52 DUPTABLE                         R6 K26 [{"value", "x", "y", "z"}]
       53 SETTABLEKS                       R3 R6 K20 ["value"]
       55 SETTABLEKS                       R3 R6 K21 ["x"]
       57 SETTABLEKS                       R3 R6 K22 ["y"]
       59 SETTABLEKS                       R3 R6 K25 ["z"]
       61 SETTABLEKS                       R6 R5 K17 ["allMultiple"]
       63 SETTABLEKS                       R5 R4 K12 ["Vector3"]
       65 DUPTABLE                         R5 K18 [{"fromValue", "allMultiple"}]
       66 MOVE                             R6 R2
       67 LOADK                            R7 K27 ["getPlaceHolderPartsFromCombinedColor"]
       68 CALL                             R6 1 1
       69 SETTABLEKS                       R6 R5 K16 ["fromValue"]
       71 DUPTABLE                         R6 K37 [{"value", "color3", "r", "g", "b", "h", "s", "v", "brickColor", "transparency"}]
       72 SETTABLEKS                       R3 R6 K20 ["value"]
       74 SETTABLEKS                       R3 R6 K28 ["color3"]
       76 SETTABLEKS                       R3 R6 K29 ["r"]
       78 SETTABLEKS                       R3 R6 K30 ["g"]
       80 SETTABLEKS                       R3 R6 K31 ["b"]
       82 SETTABLEKS                       R3 R6 K32 ["h"]
       84 SETTABLEKS                       R3 R6 K33 ["s"]
       86 SETTABLEKS                       R3 R6 K34 ["v"]
       88 SETTABLEKS                       R3 R6 K35 ["brickColor"]
       90 SETTABLEKS                       R3 R6 K36 ["transparency"]
       92 SETTABLEKS                       R6 R5 K17 ["allMultiple"]
       94 SETTABLEKS                       R5 R4 K13 ["CombinedColor"]
       96 DUPTABLE                         R5 K18 [{"fromValue", "allMultiple"}]
       97 MOVE                             R6 R2
       98 LOADK                            R7 K38 ["getPlaceHolderPartsFromInstanceRef"]
       99 CALL                             R6 1 1
      100 SETTABLEKS                       R6 R5 K16 ["fromValue"]
      102 DUPTABLE                         R6 K45 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
      103 SETTABLEKS                       R3 R6 K20 ["value"]
      105 SETTABLEKS                       R3 R6 K39 ["className"]
      107 SETTABLEKS                       R3 R6 K40 ["name"]
      109 SETTABLEKS                       R3 R6 K41 ["isAutoUpdatedPackageLink"]
      111 SETTABLEKS                       R3 R6 K42 ["isClientScript"]
      113 SETTABLEKS                       R3 R6 K43 ["isDisabledScript"]
      115 SETTABLEKS                       R3 R6 K44 ["isHiddenGui"]
      117 SETTABLEKS                       R6 R5 K17 ["allMultiple"]
      119 SETTABLEKS                       R5 R4 K14 ["InstanceRef"]
      121 DUPCLOSURE                       R5 K46 [PROTO_0]
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R3
      124 RETURN                           R5 1
