MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R4 R0 K2 ["UI"]
       13 GETTABLEKS                       R3 R4 K7 ["Components"]
       15 GETTABLEKS                       R2 R3 K8 ["UIFolderData"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R4 R1 K9 ["RoundBox"]
       22 GETTABLEKS                       R3 R4 K10 ["style"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Util"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["deepCopy"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K13 ["Style"]
       36 GETTABLEKS                       R6 R7 K14 ["StyleKey"]
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
       66 DUPTABLE                         R8 K27 [{"TextSize", "TextXAlignment"}]
       67 LOADN                            R9 18
       68 SETTABLEKS                       R9 R8 K25 ["TextSize"]
       70 GETIMPORT                        R9 K30 [Enum.TextXAlignment.Left]
       72 SETTABLEKS                       R9 R8 K26 ["TextXAlignment"]
       74 SETTABLEKS                       R8 R7 K31 ["Text"]
       76 DUPTABLE                         R8 K32 [{"Offset"}]
       77 GETIMPORT                        R9 K23 [Vector2.new]
       79 LOADN                            R10 216
       80 LOADN                            R11 0
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K24 ["Offset"]
       84 SETTABLEKS                       R8 R7 K33 ["&ImageOffset"]
       86 LOADNIL                          R8
       87 SETTABLEKS                       R8 R7 K34 ["&TextInputDropdown"]
       89 DUPTABLE                         R8 K39 [{"CornerRadius", "BackgroundColor", "StrokeColor", "StrokeThickness", "Offset"}]
       90 GETIMPORT                        R9 K41 [UDim.new]
       92 LOADN                            R10 0
       93 LOADN                            R11 8
       94 CALL                             R9 2 1
       95 SETTABLEKS                       R9 R8 K35 ["CornerRadius"]
       97 GETTABLEKS                       R9 R5 K42 ["DropdownMenuStateLayerBackground"]
       99 SETTABLEKS                       R9 R8 K36 ["BackgroundColor"]
      101 GETTABLEKS                       R9 R5 K43 ["DropdownMenuStateLayerBorderColor"]
      103 SETTABLEKS                       R9 R8 K37 ["StrokeColor"]
      105 LOADN                            R9 1
      106 SETTABLEKS                       R9 R8 K38 ["StrokeThickness"]
      108 GETIMPORT                        R9 K23 [Vector2.new]
      110 LOADN                            R10 0
      111 LOADN                            R11 5
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K24 ["Offset"]
      115 SETTABLEKS                       R8 R7 K44 ["&Modern"]
      117 RETURN                           R7 1
