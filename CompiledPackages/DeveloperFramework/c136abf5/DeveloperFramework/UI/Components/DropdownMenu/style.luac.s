MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["Components"]
       15 GETTABLEKS                       R2 R2 K8 ["UIFolderData"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R1 K9 ["RoundBox"]
       22 GETTABLEKS                       R3 R3 K10 ["style"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Util"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["deepCopy"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Style"]
       36 GETTABLEKS                       R6 R6 K14 ["StyleKey"]
       38 CALL                             R5 1 1
       39 MOVE                             R6 R4
       40 MOVE                             R7 R2
       41 CALL                             R6 1 1
       42 NEWTABLE                         R7 16 0
       44 SETTABLEKS                       R6 R7 K15 ["BackgroundStyle"]
       46 GETTABLEKS                       R8 R5 K16 ["Border"]
       48 SETTABLEKS                       R8 R7 K17 ["BorderColor"]
       50 LOADN                            R8 240
       51 SETTABLEKS                       R8 R7 K18 ["Width"]
       53 LOADN                            R8 240
       54 SETTABLEKS                       R8 R7 K19 ["MaxHeight"]
       56 LOADN                            R8 40
       57 SETTABLEKS                       R8 R7 K20 ["ItemHeight"]
       59 GETIMPORT                        R8 K23 [Vector2.new]
       61 LOADN                            R9 0
       62 LOADN                            R10 0
       63 CALL                             R8 2 1
       64 SETTABLEKS                       R8 R7 K24 ["Offset"]
       66 DUPTABLE                         R8 K28 [{["TextSize"] = 18, ["TextXAlignment"]}]
       67 GETIMPORT                        R9 K31 [Enum.TextXAlignment.Left]
       69 SETTABLEKS                       R9 R8 K27 ["TextXAlignment"]
       71 SETTABLEKS                       R8 R7 K32 ["Text"]
       73 DUPTABLE                         R8 K33 [{"Offset"}]
       74 GETIMPORT                        R9 K23 [Vector2.new]
       76 LOADN                            R10 -40
       77 LOADN                            R11 0
       78 CALL                             R9 2 1
       79 SETTABLEKS                       R9 R8 K24 ["Offset"]
       81 SETTABLEKS                       R8 R7 K34 ["&ImageOffset"]
       83 LOADNIL                          R8
       84 SETTABLEKS                       R8 R7 K35 ["&TextInputDropdown"]
       86 DUPTABLE                         R8 K41 [{["CornerRadius"], ["BackgroundColor"], ["StrokeColor"], ["StrokeThickness"] = 1, ["Offset"]}]
       87 GETIMPORT                        R9 K43 [UDim.new]
       89 LOADN                            R10 0
       90 LOADN                            R11 8
       91 CALL                             R9 2 1
       92 SETTABLEKS                       R9 R8 K36 ["CornerRadius"]
       94 GETTABLEKS                       R9 R5 K44 ["DropdownMenuStateLayerBackground"]
       96 SETTABLEKS                       R9 R8 K37 ["BackgroundColor"]
       98 GETTABLEKS                       R9 R5 K45 ["DropdownMenuStateLayerBorderColor"]
      100 SETTABLEKS                       R9 R8 K38 ["StrokeColor"]
      102 GETIMPORT                        R9 K23 [Vector2.new]
      104 LOADN                            R10 0
      105 LOADN                            R11 5
      106 CALL                             R9 2 1
      107 SETTABLEKS                       R9 R8 K24 ["Offset"]
      109 SETTABLEKS                       R8 R7 K46 ["&Modern"]
      111 RETURN                           R7 1
