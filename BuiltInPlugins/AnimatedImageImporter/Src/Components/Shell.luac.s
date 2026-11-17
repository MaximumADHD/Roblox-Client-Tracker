PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["useStudioOverride"]
        9 GETIMPORT                        R3 K6 [Enum.StudioAction.Undo]
       11 GETTABLEKS                       R4 R0 K7 ["undo"]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R1 K2 ["useStudioOverride"]
       16 GETIMPORT                        R3 K9 [Enum.StudioAction.Redo]
       18 GETTABLEKS                       R4 R0 K10 ["redo"]
       20 CALL                             R2 2 0
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_1:
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
       36 DUPTABLE                         R5 K17 [{"HistoryOverrides", "Contents"}]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K1 ["createElement"]
       40 GETUPVAL                         R7 3
       41 DUPTABLE                         R8 K20 [{"undo", "redo"}]
       42 GETTABLEKS                       R9 R0 K18 ["undo"]
       44 SETTABLEKS                       R9 R8 K18 ["undo"]
       46 GETTABLEKS                       R9 R0 K19 ["redo"]
       48 SETTABLEKS                       R9 R8 K19 ["redo"]
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K15 ["HistoryOverrides"]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K1 ["createElement"]
       56 GETUPVAL                         R7 4
       57 GETTABLEKS                       R7 R7 K21 ["Provider"]
       59 NEWTABLE                         R8 0 0
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K1 ["createElement"]
       64 GETUPVAL                         R10 5
       65 GETTABLEKS                       R10 R10 K22 ["View"]
       67 DUPTABLE                         R11 K24 [{"Size"}]
       68 GETIMPORT                        R12 K27 [UDim2.new]
       70 LOADN                            R13 1
       71 LOADN                            R14 0
       72 LOADN                            R15 0
       73 LOADN                            R16 600
       74 CALL                             R12 4 1
       75 SETTABLEKS                       R12 R11 K23 ["Size"]
       77 DUPTABLE                         R12 K30 [{"MouseTracker", "Row"}]
       78 GETUPVAL                         R13 1
       79 GETTABLEKS                       R13 R13 K1 ["createElement"]
       81 GETUPVAL                         R14 4
       82 GETTABLEKS                       R14 R14 K31 ["Tracker"]
       84 CALL                             R13 1 1
       85 SETTABLEKS                       R13 R12 K28 ["MouseTracker"]
       87 GETUPVAL                         R13 1
       88 GETTABLEKS                       R13 R13 K1 ["createElement"]
       90 GETUPVAL                         R14 5
       91 GETTABLEKS                       R14 R14 K22 ["View"]
       93 DUPTABLE                         R15 K35 [{["tag"] = "gap-large row size-full", ["testId"]}]
       94 GETTABLEKS                       R16 R0 K34 ["testId"]
       96 SETTABLEKS                       R16 R15 K34 ["testId"]
       98 DUPTABLE                         R16 K38 [{"Left", "Right"}]
       99 GETUPVAL                         R17 1
      100 GETTABLEKS                       R17 R17 K1 ["createElement"]
      102 GETUPVAL                         R18 5
      103 GETTABLEKS                       R18 R18 K39 ["ScrollView"]
      105 DUPTABLE                         R19 K43 [{["scroll"], ["LayoutOrder"], ["tag"] = "size-0-full fill radius-medium bg-surface-100 padding-xxlarge"}]
      106 DUPTABLE                         R20 K47 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
      107 GETIMPORT                        R21 K51 [Enum.AutomaticSize.Y]
      109 SETTABLEKS                       R21 R20 K44 ["AutomaticCanvasSize"]
      111 GETIMPORT                        R21 K52 [Enum.ScrollingDirection.Y]
      113 SETTABLEKS                       R21 R20 K45 ["ScrollingDirection"]
      115 GETIMPORT                        R21 K27 [UDim2.new]
      117 CALL                             R21 0 1
      118 SETTABLEKS                       R21 R20 K46 ["CanvasSize"]
      120 SETTABLEKS                       R20 R19 K40 ["scroll"]
      122 MOVE                             R20 R1
      123 CALL                             R20 0 1
      124 SETTABLEKS                       R20 R19 K41 ["LayoutOrder"]
      126 GETTABLEKS                       R20 R0 K53 ["left"]
      128 CALL                             R17 3 1
      129 SETTABLEKS                       R17 R16 K36 ["Left"]
      131 GETUPVAL                         R17 1
      132 GETTABLEKS                       R17 R17 K1 ["createElement"]
      134 GETUPVAL                         R18 5
      135 GETTABLEKS                       R18 R18 K22 ["View"]
      137 DUPTABLE                         R19 K54 [{"LayoutOrder", "Size"}]
      138 MOVE                             R20 R1
      139 CALL                             R20 0 1
      140 SETTABLEKS                       R20 R19 K41 ["LayoutOrder"]
      142 GETIMPORT                        R20 K27 [UDim2.new]
      144 LOADN                            R21 0
      145 LOADN                            R22 320
      146 LOADN                            R23 1
      147 LOADN                            R24 0
      148 CALL                             R20 4 1
      149 SETTABLEKS                       R20 R19 K23 ["Size"]
      151 GETTABLEKS                       R20 R0 K55 ["right"]
      153 CALL                             R17 3 1
      154 SETTABLEKS                       R17 R16 K37 ["Right"]
      156 CALL                             R13 3 1
      157 SETTABLEKS                       R13 R12 K29 ["Row"]
      159 CALL                             R9 3 -1
      160 CALL                             R6 -1 1
      161 SETTABLEKS                       R6 R5 K16 ["Contents"]
      163 CALL                             R2 3 -1
      164 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["ActionOverrideContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K7 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["MouseContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Packages"]
       50 GETTABLEKS                       R7 R7 K14 ["StudioFoundation"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K15 [PROTO_0]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 DUPCLOSURE                       R8 K16 [PROTO_1]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 RETURN                           R8 1
