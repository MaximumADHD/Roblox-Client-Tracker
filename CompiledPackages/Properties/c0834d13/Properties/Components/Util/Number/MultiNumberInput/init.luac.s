PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["info"]
        3 GETTABLEKS                       R0 R1 K1 ["readonly"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K2 ["toggle"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["labelPressedSignal"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["no label pressed signal"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K4 ["useToggleState"]
       11 LOADB                            R2 0
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R3 R0 K0 ["labelPressedSignal"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 0
       21 CALL                             R2 3 0
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K5 ["useCallback"]
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R4 0 0
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 3
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R4 R5 K6 ["Fragment"]
       34 NEWTABLE                         R5 0 0
       36 DUPTABLE                         R6 K10 [{"ListLayout", "Combined", "Separate"}]
       37 GETUPVAL                         R7 3
       38 LOADK                            R8 K11 ["UIListLayout"]
       39 DUPTABLE                         R9 K16 [{"Padding", "FillDirection", "SortOrder", "HorizontalFlex"}]
       40 GETIMPORT                        R10 K19 [UDim.new]
       42 LOADN                            R11 0
       43 LOADN                            R12 4
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K12 ["Padding"]
       47 GETIMPORT                        R10 K22 [Enum.FillDirection.Horizontal]
       49 SETTABLEKS                       R10 R9 K13 ["FillDirection"]
       51 GETIMPORT                        R10 K24 [Enum.SortOrder.LayoutOrder]
       53 SETTABLEKS                       R10 R9 K14 ["SortOrder"]
       55 GETIMPORT                        R10 K27 [Enum.UIFlexAlignment.Fill]
       57 SETTABLEKS                       R10 R9 K15 ["HorizontalFlex"]
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R6 K7 ["ListLayout"]
       62 GETUPVAL                         R7 3
       63 GETUPVAL                         R8 4
       64 GETUPVAL                         R11 5
       65 GETTABLEKS                       R10 R11 K28 ["Dictionary"]
       67 GETTABLEKS                       R9 R10 K29 ["join"]
       69 MOVE                             R10 R0
       70 DUPTABLE                         R11 K32 [{"Visible", "finishCombinedEdit"}]
       71 GETTABLEKS                       R12 R1 K33 ["enabled"]
       73 SETTABLEKS                       R12 R11 K30 ["Visible"]
       75 SETTABLEKS                       R2 R11 K31 ["finishCombinedEdit"]
       77 CALL                             R9 2 1
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K8 ["Combined"]
       81 GETUPVAL                         R7 3
       82 GETUPVAL                         R8 6
       83 GETUPVAL                         R11 5
       84 GETTABLEKS                       R10 R11 K28 ["Dictionary"]
       86 GETTABLEKS                       R9 R10 K29 ["join"]
       88 MOVE                             R10 R0
       89 DUPTABLE                         R11 K34 [{"Visible"}]
       90 GETTABLEKS                       R13 R1 K33 ["enabled"]
       92 NOT                              R12 R13
       93 SETTABLEKS                       R12 R11 K30 ["Visible"]
       95 CALL                             R9 2 1
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R6 K9 ["Separate"]
       99 CALL                             R3 3 -1
      100 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R4 K1 [script]
       13 GETTABLEKS                       R3 R4 K7 ["CombinedMultiNumberInput"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K9 ["NumberPartInput"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["PropertyEditorTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K11 ["React"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R1 K12 ["ReactUtils"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETIMPORT                        R10 K1 [script]
       47 GETTABLEKS                       R9 R10 K13 ["SeparateMultiNumberInput"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R11 R0 K14 ["Hooks"]
       54 GETTABLEKS                       R10 R11 K15 ["useEventConnection"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R10 R6 K16 ["createElement"]
       59 DUPCLOSURE                       R11 K17 [PROTO_2]
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R8
       67 RETURN                           R11 1
