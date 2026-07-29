PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getInfo"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["readonly"]
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["toggle"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["labelPressedSignal"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["no label pressed signal"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K4 ["useToggleState"]
       11 LOADB                            R2 0
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R3 R0 K0 ["labelPressedSignal"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R6 R0 K5 ["getInfo"]
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R2 3 0
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K6 ["useCallback"]
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          VAL R1
       31 NEWTABLE                         R4 0 0
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K7 ["Hooks"]
       37 GETTABLEKS                       R3 R3 K8 ["useTokens"]
       39 CALL                             R3 0 1
       40 GETUPVAL                         R4 4
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K9 ["Fragment"]
       44 NEWTABLE                         R6 0 0
       46 DUPTABLE                         R7 K13 [{"ListLayout", "Combined", "Separate"}]
       47 GETUPVAL                         R8 4
       48 LOADK                            R9 K14 ["UIListLayout"]
       49 DUPTABLE                         R10 K19 [{"Padding", "FillDirection", "SortOrder", "HorizontalFlex"}]
       50 GETIMPORT                        R11 K22 [UDim.new]
       52 LOADN                            R12 0
       53 GETTABLEKS                       R13 R3 K23 ["Gap"]
       55 GETTABLEKS                       R13 R13 K24 ["XSmall"]
       57 CALL                             R11 2 1
       58 SETTABLEKS                       R11 R10 K15 ["Padding"]
       60 GETIMPORT                        R11 K27 [Enum.FillDirection.Horizontal]
       62 SETTABLEKS                       R11 R10 K16 ["FillDirection"]
       64 GETIMPORT                        R11 K29 [Enum.SortOrder.LayoutOrder]
       66 SETTABLEKS                       R11 R10 K17 ["SortOrder"]
       68 GETIMPORT                        R11 K32 [Enum.UIFlexAlignment.Fill]
       70 SETTABLEKS                       R11 R10 K18 ["HorizontalFlex"]
       72 CALL                             R8 2 1
       73 SETTABLEKS                       R8 R7 K10 ["ListLayout"]
       75 GETUPVAL                         R8 4
       76 GETUPVAL                         R9 5
       77 GETUPVAL                         R10 6
       78 GETTABLEKS                       R10 R10 K33 ["Dictionary"]
       80 GETTABLEKS                       R10 R10 K34 ["join"]
       82 MOVE                             R11 R0
       83 DUPTABLE                         R12 K37 [{"Visible", "finishCombinedEdit"}]
       84 GETTABLEKS                       R13 R1 K38 ["enabled"]
       86 SETTABLEKS                       R13 R12 K35 ["Visible"]
       88 SETTABLEKS                       R2 R12 K36 ["finishCombinedEdit"]
       90 CALL                             R10 2 1
       91 CALL                             R8 2 1
       92 SETTABLEKS                       R8 R7 K11 ["Combined"]
       94 GETUPVAL                         R8 4
       95 GETUPVAL                         R9 7
       96 GETUPVAL                         R10 6
       97 GETTABLEKS                       R10 R10 K33 ["Dictionary"]
       99 GETTABLEKS                       R10 R10 K34 ["join"]
      101 MOVE                             R11 R0
      102 DUPTABLE                         R12 K39 [{"Visible"}]
      103 GETTABLEKS                       R14 R1 K38 ["enabled"]
      105 NOT                              R13 R14
      106 SETTABLEKS                       R13 R12 K35 ["Visible"]
      108 CALL                             R10 2 1
      109 CALL                             R8 2 1
      110 SETTABLEKS                       R8 R7 K12 ["Separate"]
      112 CALL                             R4 3 -1
      113 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K7 ["CombinedMultiNumberInput"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K10 ["NumberPartInput"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["PropertyEditorTypes"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R1 K12 ["React"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R1 K13 ["ReactUtils"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETIMPORT                        R10 K1 [script]
       52 GETTABLEKS                       R10 R10 K14 ["SeparateMultiNumberInput"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R11 R0 K15 ["Hooks"]
       59 GETTABLEKS                       R11 R11 K16 ["useEventConnection"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R11 R7 K17 ["createElement"]
       64 DUPCLOSURE                       R12 K18 [PROTO_2]
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R9
       73 RETURN                           R12 1
