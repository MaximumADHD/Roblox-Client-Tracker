PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Components"]
       10 GETTABLEKS                       R3 R3 K3 ["Dialog"]
       12 DUPTABLE                         R4 K12 [{["uri"], ["type"] = "Default", ["primaryAction"], ["secondaryAction"], ["escapeAction"], ["width"] = 1280}]
       13 GETTABLEKS                       R5 R0 K4 ["uri"]
       15 SETTABLEKS                       R5 R4 K4 ["uri"]
       17 GETTABLEKS                       R5 R0 K7 ["primaryAction"]
       19 SETTABLEKS                       R5 R4 K7 ["primaryAction"]
       21 GETTABLEKS                       R5 R0 K8 ["secondaryAction"]
       23 SETTABLEKS                       R5 R4 K8 ["secondaryAction"]
       25 DUPTABLE                         R5 K14 [{"uri", "onClose"}]
       26 GETTABLEKS                       R6 R0 K4 ["uri"]
       28 SETTABLEKS                       R6 R5 K4 ["uri"]
       30 GETTABLEKS                       R6 R0 K13 ["onClose"]
       32 SETTABLEKS                       R6 R5 K13 ["onClose"]
       34 SETTABLEKS                       R5 R4 K9 ["escapeAction"]
       36 DUPTABLE                         R5 K16 [{"Contents"}]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K1 ["createElement"]
       40 GETUPVAL                         R7 3
       41 GETTABLEKS                       R7 R7 K17 ["Provider"]
       43 NEWTABLE                         R8 0 0
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K1 ["createElement"]
       48 GETUPVAL                         R10 4
       49 GETTABLEKS                       R10 R10 K18 ["View"]
       51 DUPTABLE                         R11 K20 [{"Size"}]
       52 GETIMPORT                        R12 K23 [UDim2.new]
       54 LOADN                            R13 1
       55 LOADN                            R14 0
       56 LOADN                            R15 0
       57 LOADN                            R16 600
       58 CALL                             R12 4 1
       59 SETTABLEKS                       R12 R11 K19 ["Size"]
       61 DUPTABLE                         R12 K26 [{"MouseTracker", "Row"}]
       62 GETUPVAL                         R13 1
       63 GETTABLEKS                       R13 R13 K1 ["createElement"]
       65 GETUPVAL                         R14 3
       66 GETTABLEKS                       R14 R14 K27 ["Tracker"]
       68 CALL                             R13 1 1
       69 SETTABLEKS                       R13 R12 K24 ["MouseTracker"]
       71 GETUPVAL                         R13 1
       72 GETTABLEKS                       R13 R13 K1 ["createElement"]
       74 GETUPVAL                         R14 4
       75 GETTABLEKS                       R14 R14 K18 ["View"]
       77 DUPTABLE                         R15 K31 [{["tag"] = "gap-large row size-full", ["testId"]}]
       78 GETTABLEKS                       R16 R0 K30 ["testId"]
       80 SETTABLEKS                       R16 R15 K30 ["testId"]
       82 DUPTABLE                         R16 K34 [{"Left", "Right"}]
       83 GETUPVAL                         R17 1
       84 GETTABLEKS                       R17 R17 K1 ["createElement"]
       86 GETUPVAL                         R18 4
       87 GETTABLEKS                       R18 R18 K35 ["ScrollView"]
       89 DUPTABLE                         R19 K39 [{["scroll"], ["LayoutOrder"], ["tag"] = "size-0-full fill radius-medium bg-surface-100 padding-xxlarge"}]
       90 DUPTABLE                         R20 K43 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
       91 GETIMPORT                        R21 K47 [Enum.AutomaticSize.Y]
       93 SETTABLEKS                       R21 R20 K40 ["AutomaticCanvasSize"]
       95 GETIMPORT                        R21 K48 [Enum.ScrollingDirection.Y]
       97 SETTABLEKS                       R21 R20 K41 ["ScrollingDirection"]
       99 GETIMPORT                        R21 K23 [UDim2.new]
      101 CALL                             R21 0 1
      102 SETTABLEKS                       R21 R20 K42 ["CanvasSize"]
      104 SETTABLEKS                       R20 R19 K36 ["scroll"]
      106 MOVE                             R20 R1
      107 CALL                             R20 0 1
      108 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      110 GETTABLEKS                       R20 R0 K49 ["left"]
      112 CALL                             R17 3 1
      113 SETTABLEKS                       R17 R16 K32 ["Left"]
      115 GETUPVAL                         R17 1
      116 GETTABLEKS                       R17 R17 K1 ["createElement"]
      118 GETUPVAL                         R18 4
      119 GETTABLEKS                       R18 R18 K18 ["View"]
      121 DUPTABLE                         R19 K50 [{"LayoutOrder", "Size"}]
      122 MOVE                             R20 R1
      123 CALL                             R20 0 1
      124 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      126 GETIMPORT                        R20 K23 [UDim2.new]
      128 LOADN                            R21 0
      129 LOADN                            R22 320
      130 LOADN                            R23 1
      131 LOADN                            R24 0
      132 CALL                             R20 4 1
      133 SETTABLEKS                       R20 R19 K19 ["Size"]
      135 GETTABLEKS                       R20 R0 K51 ["right"]
      137 CALL                             R17 3 1
      138 SETTABLEKS                       R17 R16 K33 ["Right"]
      140 CALL                             R13 3 1
      141 SETTABLEKS                       R13 R12 K25 ["Row"]
      143 CALL                             R9 3 -1
      144 CALL                             R6 -1 1
      145 SETTABLEKS                       R6 R5 K15 ["Contents"]
      147 CALL                             R2 3 -1
      148 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["MouseContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K14 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 RETURN                           R6 1
