PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K4 ["join"]
       10 GETUPVAL                         R3 1
       11 DUPTABLE                         R4 K7 [{"Category", "ItemId"}]
       12 LOADK                            R5 K8 ["Widgets"]
       13 SETTABLEKS                       R5 R4 K5 ["Category"]
       15 LOADK                            R5 K9 ["Mezzanine"]
       16 SETTABLEKS                       R5 R4 K6 ["ItemId"]
       18 CALL                             R2 2 1
       19 NEWTABLE                         R3 0 5
       21 DUPTABLE                         R4 K14 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
       22 LOADK                            R5 K15 ["ManageTabs"]
       23 SETTABLEKS                       R5 R4 K10 ["Id"]
       25 LOADK                            R5 K16 ["Option"]
       26 SETTABLEKS                       R5 R4 K11 ["Type"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K4 ["join"]
       31 GETUPVAL                         R6 1
       32 DUPTABLE                         R7 K7 [{"Category", "ItemId"}]
       33 LOADK                            R8 K17 ["Actions"]
       34 SETTABLEKS                       R8 R7 K5 ["Category"]
       36 LOADK                            R8 K15 ["ManageTabs"]
       37 SETTABLEKS                       R8 R7 K6 ["ItemId"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K12 ["Action"]
       42 LOADB                            R5 1
       43 SETTABLEKS                       R5 R4 K13 ["ReserveCheckmarkSpace"]
       45 DUPTABLE                         R5 K18 [{"Type"}]
       46 LOADK                            R6 K19 ["Separator"]
       47 SETTABLEKS                       R6 R5 K11 ["Type"]
       49 DUPTABLE                         R6 K14 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
       50 LOADK                            R7 K20 ["DockUndockRibbon"]
       51 SETTABLEKS                       R7 R6 K10 ["Id"]
       53 LOADK                            R7 K16 ["Option"]
       54 SETTABLEKS                       R7 R6 K11 ["Type"]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R7 R8 K4 ["join"]
       59 GETUPVAL                         R8 1
       60 DUPTABLE                         R9 K7 [{"Category", "ItemId"}]
       61 LOADK                            R10 K17 ["Actions"]
       62 SETTABLEKS                       R10 R9 K5 ["Category"]
       64 LOADK                            R10 K20 ["DockUndockRibbon"]
       65 SETTABLEKS                       R10 R9 K6 ["ItemId"]
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K12 ["Action"]
       70 LOADB                            R7 1
       71 SETTABLEKS                       R7 R6 K13 ["ReserveCheckmarkSpace"]
       73 DUPTABLE                         R7 K14 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
       74 LOADK                            R8 K21 ["CompactDensity"]
       75 SETTABLEKS                       R8 R7 K10 ["Id"]
       77 LOADK                            R8 K16 ["Option"]
       78 SETTABLEKS                       R8 R7 K11 ["Type"]
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R8 R9 K4 ["join"]
       83 GETUPVAL                         R9 1
       84 DUPTABLE                         R10 K7 [{"Category", "ItemId"}]
       85 LOADK                            R11 K17 ["Actions"]
       86 SETTABLEKS                       R11 R10 K5 ["Category"]
       88 LOADK                            R11 K21 ["CompactDensity"]
       89 SETTABLEKS                       R11 R10 K6 ["ItemId"]
       91 CALL                             R8 2 1
       92 SETTABLEKS                       R8 R7 K12 ["Action"]
       94 LOADB                            R8 1
       95 SETTABLEKS                       R8 R7 K13 ["ReserveCheckmarkSpace"]
       97 DUPTABLE                         R8 K14 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
       98 LOADK                            R9 K22 ["ShowHideLabels"]
       99 SETTABLEKS                       R9 R8 K10 ["Id"]
      101 LOADK                            R9 K16 ["Option"]
      102 SETTABLEKS                       R9 R8 K11 ["Type"]
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R9 R10 K4 ["join"]
      107 GETUPVAL                         R10 1
      108 DUPTABLE                         R11 K7 [{"Category", "ItemId"}]
      109 LOADK                            R12 K17 ["Actions"]
      110 SETTABLEKS                       R12 R11 K5 ["Category"]
      112 LOADK                            R12 K22 ["ShowHideLabels"]
      113 SETTABLEKS                       R12 R11 K6 ["ItemId"]
      115 CALL                             R9 2 1
      116 SETTABLEKS                       R9 R8 K12 ["Action"]
      118 LOADB                            R9 1
      119 SETTABLEKS                       R9 R8 K13 ["ReserveCheckmarkSpace"]
      121 SETLIST                          R3 R4 5 [1]
      123 DUPTABLE                         R4 K24 [{"Type", "Children"}]
      124 LOADK                            R5 K25 ["Column"]
      125 SETTABLEKS                       R5 R4 K11 ["Type"]
      127 SETTABLEKS                       R3 R4 K23 ["Children"]
      129 GETUPVAL                         R5 2
      130 NEWTABLE                         R6 0 1
      132 MOVE                             R7 R4
      133 SETLIST                          R6 R7 1 [1]
      135 MOVE                             R7 R2
      136 DUPTABLE                         R8 K29 [{"SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      137 GETIMPORT                        R9 K32 [Vector2.new]
      139 LOADN                            R10 0
      140 LOADN                            R11 0
      141 CALL                             R9 2 1
      142 SETTABLEKS                       R9 R8 K26 ["SubjectAnchorPoint"]
      144 GETIMPORT                        R9 K32 [Vector2.new]
      146 LOADN                            R10 0
      147 LOADN                            R11 0
      148 CALL                             R9 2 1
      149 SETTABLEKS                       R9 R8 K27 ["TargetAnchorPoint"]
      151 GETIMPORT                        R9 K32 [Vector2.new]
      153 GETTABLEKS                       R11 R1 K33 ["Position"]
      155 GETTABLEKS                       R10 R11 K34 ["X"]
      157 GETTABLEKS                       R12 R1 K33 ["Position"]
      159 GETTABLEKS                       R11 R12 K35 ["Y"]
      161 CALL                             R9 2 1
      162 SETTABLEKS                       R9 R8 K28 ["Offset"]
      164 CALL                             R5 3 0
      165 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 2
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 NEWTABLE                         R4 0 2
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 SETLIST                          R4 R5 2 [1]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R7 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R7 K13 ["Types"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K12 ["Src"]
       38 GETTABLEKS                       R8 R9 K14 ["Components"]
       40 GETTABLEKS                       R7 R8 K15 ["ControlsView"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R10 R0 K12 ["Src"]
       47 GETTABLEKS                       R9 R10 K16 ["Hooks"]
       49 GETTABLEKS                       R8 R9 K17 ["useMenu"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K18 [PROTO_1]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 RETURN                           R8 1
