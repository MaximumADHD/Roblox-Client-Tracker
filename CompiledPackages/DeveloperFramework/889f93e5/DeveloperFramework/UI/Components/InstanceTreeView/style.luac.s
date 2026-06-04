MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["deepCopy"]
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Style"]
       20 GETTABLEKS                       R4 R4 K10 ["StyleKey"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K2 ["UI"]
       27 GETTABLEKS                       R5 R5 K11 ["Components"]
       29 GETTABLEKS                       R5 R5 K12 ["UIFolderData"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R4 K13 ["TreeView"]
       36 GETTABLEKS                       R6 R6 K14 ["style"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K4 ["Parent"]
       43 GETTABLEKS                       R7 R7 K15 ["Dash"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K16 ["join"]
       48 MOVE                             R8 R2
       49 MOVE                             R9 R5
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R8 K17 ["&BorderBox"]
       53 MOVE                             R10 R7
       54 MOVE                             R11 R8
       55 NEWTABLE                         R12 16 0
       57 DUPTABLE                         R13 K21 [{"Font", "TextColor", "TextSize"}]
       58 GETIMPORT                        R14 K24 [Enum.Font.SourceSans]
       60 SETTABLEKS                       R14 R13 K18 ["Font"]
       62 GETTABLEKS                       R14 R3 K25 ["MainText"]
       64 SETTABLEKS                       R14 R13 K19 ["TextColor"]
       66 LOADN                            R14 18
       67 SETTABLEKS                       R14 R13 K20 ["TextSize"]
       69 SETTABLEKS                       R13 R12 K26 ["Text"]
       71 LOADN                            R13 20
       72 SETTABLEKS                       R13 R12 K27 ["Indent"]
       74 LOADN                            R13 24
       75 SETTABLEKS                       R13 R12 K28 ["RowHeight"]
       77 DUPTABLE                         R13 K34 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
       78 LOADK                            R14 K35 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       79 SETTABLEKS                       R14 R13 K29 ["Image"]
       81 LOADN                            R14 12
       82 SETTABLEKS                       R14 R13 K30 ["Size"]
       84 GETIMPORT                        R14 K38 [Vector2.new]
       86 LOADN                            R15 24
       87 LOADN                            R16 0
       88 CALL                             R14 2 1
       89 SETTABLEKS                       R14 R13 K31 ["ExpandedOffset"]
       91 GETIMPORT                        R14 K38 [Vector2.new]
       93 LOADN                            R15 12
       94 LOADN                            R16 0
       95 CALL                             R14 2 1
       96 SETTABLEKS                       R14 R13 K32 ["CollapsedOffset"]
       98 GETTABLEKS                       R14 R3 K25 ["MainText"]
      100 SETTABLEKS                       R14 R13 K33 ["Color"]
      102 SETTABLEKS                       R13 R12 K39 ["Arrow"]
      104 LOADN                            R13 5
      105 SETTABLEKS                       R13 R12 K40 ["IconPadding"]
      107 GETTABLEKS                       R13 R3 K41 ["ButtonHover"]
      109 SETTABLEKS                       R13 R12 K42 ["HoverColor"]
      111 GETTABLEKS                       R13 R3 K43 ["DialogMainButton"]
      113 SETTABLEKS                       R13 R12 K44 ["SelectedColor"]
      115 GETTABLEKS                       R13 R3 K45 ["DialogMainButtonText"]
      117 SETTABLEKS                       R13 R12 K46 ["SelectedTextColor"]
      119 MOVE                             R13 R7
      120 MOVE                             R14 R9
      121 DUPTABLE                         R15 K47 [{"Text", "IconPadding", "RowHeight", "Indent"}]
      122 DUPTABLE                         R16 K21 [{"Font", "TextColor", "TextSize"}]
      123 GETIMPORT                        R17 K24 [Enum.Font.SourceSans]
      125 SETTABLEKS                       R17 R16 K18 ["Font"]
      127 GETTABLEKS                       R17 R3 K25 ["MainText"]
      129 SETTABLEKS                       R17 R16 K19 ["TextColor"]
      131 LOADN                            R17 16
      132 SETTABLEKS                       R17 R16 K20 ["TextSize"]
      134 SETTABLEKS                       R16 R15 K26 ["Text"]
      136 LOADN                            R16 3
      137 SETTABLEKS                       R16 R15 K40 ["IconPadding"]
      139 LOADN                            R16 20
      140 SETTABLEKS                       R16 R15 K28 ["RowHeight"]
      142 LOADN                            R16 16
      143 SETTABLEKS                       R16 R15 K27 ["Indent"]
      145 CALL                             R13 2 1
      146 SETTABLEKS                       R13 R12 K48 ["&Compact"]
      148 CALL                             R10 2 -1
      149 RETURN                           R10 -1
