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
       57 DUPTABLE                         R13 K22 [{["Font"], ["TextColor"], ["TextSize"] = 18}]
       58 GETIMPORT                        R14 K25 [Enum.Font.SourceSans]
       60 SETTABLEKS                       R14 R13 K18 ["Font"]
       62 GETTABLEKS                       R14 R3 K26 ["MainText"]
       64 SETTABLEKS                       R14 R13 K19 ["TextColor"]
       66 SETTABLEKS                       R13 R12 K27 ["Text"]
       68 LOADN                            R13 20
       69 SETTABLEKS                       R13 R12 K28 ["Indent"]
       71 LOADN                            R13 24
       72 SETTABLEKS                       R13 R12 K29 ["RowHeight"]
       74 DUPTABLE                         R13 K37 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"] = 12, ["ExpandedOffset"], ["CollapsedOffset"], ["Color"]}]
       75 GETIMPORT                        R14 K40 [Vector2.new]
       77 LOADN                            R15 24
       78 LOADN                            R16 0
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K34 ["ExpandedOffset"]
       82 GETIMPORT                        R14 K40 [Vector2.new]
       84 LOADN                            R15 12
       85 LOADN                            R16 0
       86 CALL                             R14 2 1
       87 SETTABLEKS                       R14 R13 K35 ["CollapsedOffset"]
       89 GETTABLEKS                       R14 R3 K26 ["MainText"]
       91 SETTABLEKS                       R14 R13 K36 ["Color"]
       93 SETTABLEKS                       R13 R12 K41 ["Arrow"]
       95 LOADN                            R13 5
       96 SETTABLEKS                       R13 R12 K42 ["IconPadding"]
       98 GETTABLEKS                       R13 R3 K43 ["ButtonHover"]
      100 SETTABLEKS                       R13 R12 K44 ["HoverColor"]
      102 GETTABLEKS                       R13 R3 K45 ["DialogMainButton"]
      104 SETTABLEKS                       R13 R12 K46 ["SelectedColor"]
      106 GETTABLEKS                       R13 R3 K47 ["DialogMainButtonText"]
      108 SETTABLEKS                       R13 R12 K48 ["SelectedTextColor"]
      110 MOVE                             R13 R7
      111 MOVE                             R14 R9
      112 DUPTABLE                         R15 K52 [{["Text"], ["IconPadding"] = 3, ["RowHeight"] = 20, ["Indent"] = 16}]
      113 DUPTABLE                         R16 K53 [{["Font"], ["TextColor"], ["TextSize"] = 16}]
      114 GETIMPORT                        R17 K25 [Enum.Font.SourceSans]
      116 SETTABLEKS                       R17 R16 K18 ["Font"]
      118 GETTABLEKS                       R17 R3 K26 ["MainText"]
      120 SETTABLEKS                       R17 R16 K19 ["TextColor"]
      122 SETTABLEKS                       R16 R15 K27 ["Text"]
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K54 ["&Compact"]
      127 CALL                             R10 2 -1
      128 RETURN                           R10 -1
