PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getInfo"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K1 ["readonly"]
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K2 ["toggle"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

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
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R6 R0 K5 ["getInfo"]
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R2 3 0
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R2 R3 K6 ["useCallback"]
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          VAL R1
       31 NEWTABLE                         R4 0 0
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 3
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R4 R5 K7 ["Fragment"]
       38 NEWTABLE                         R5 0 0
       40 DUPTABLE                         R6 K11 [{"ListLayout", "Combined", "Separate"}]
       41 GETUPVAL                         R7 3
       42 LOADK                            R8 K12 ["UIListLayout"]
       43 DUPTABLE                         R9 K17 [{"Padding", "FillDirection", "SortOrder", "HorizontalFlex"}]
       44 GETIMPORT                        R10 K20 [UDim.new]
       46 LOADN                            R11 0
       47 LOADN                            R12 4
       48 CALL                             R10 2 1
       49 SETTABLEKS                       R10 R9 K13 ["Padding"]
       51 GETIMPORT                        R10 K23 [Enum.FillDirection.Horizontal]
       53 SETTABLEKS                       R10 R9 K14 ["FillDirection"]
       55 GETIMPORT                        R10 K25 [Enum.SortOrder.LayoutOrder]
       57 SETTABLEKS                       R10 R9 K15 ["SortOrder"]
       59 GETIMPORT                        R10 K28 [Enum.UIFlexAlignment.Fill]
       61 SETTABLEKS                       R10 R9 K16 ["HorizontalFlex"]
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R6 K8 ["ListLayout"]
       66 GETUPVAL                         R7 3
       67 GETUPVAL                         R8 4
       68 GETUPVAL                         R11 5
       69 GETTABLEKS                       R10 R11 K29 ["Dictionary"]
       71 GETTABLEKS                       R9 R10 K30 ["join"]
       73 MOVE                             R10 R0
       74 DUPTABLE                         R11 K33 [{"Visible", "finishCombinedEdit"}]
       75 GETTABLEKS                       R12 R1 K34 ["enabled"]
       77 SETTABLEKS                       R12 R11 K31 ["Visible"]
       79 SETTABLEKS                       R2 R11 K32 ["finishCombinedEdit"]
       81 CALL                             R9 2 1
       82 CALL                             R7 2 1
       83 SETTABLEKS                       R7 R6 K9 ["Combined"]
       85 GETUPVAL                         R7 3
       86 GETUPVAL                         R8 6
       87 GETUPVAL                         R11 5
       88 GETTABLEKS                       R10 R11 K29 ["Dictionary"]
       90 GETTABLEKS                       R9 R10 K30 ["join"]
       92 MOVE                             R10 R0
       93 DUPTABLE                         R11 K35 [{"Visible"}]
       94 GETTABLEKS                       R13 R1 K34 ["enabled"]
       96 NOT                              R12 R13
       97 SETTABLEKS                       R12 R11 K31 ["Visible"]
       99 CALL                             R9 2 1
      100 CALL                             R7 2 1
      101 SETTABLEKS                       R7 R6 K10 ["Separate"]
      103 CALL                             R3 3 -1
      104 RETURN                           R3 -1

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
       30 GETTABLEKS                       R9 R0 K10 ["Components"]
       32 GETTABLEKS                       R8 R9 K11 ["PropertyEntries"]
       34 GETTABLEKS                       R7 R8 K12 ["PropertyView"]
       36 GETTABLEKS                       R6 R7 K13 ["PropertyViewTypes"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K14 ["React"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K15 ["ReactUtils"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETIMPORT                        R10 K1 [script]
       53 GETTABLEKS                       R9 R10 K16 ["SeparateMultiNumberInput"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K17 ["Hooks"]
       60 GETTABLEKS                       R10 R11 K18 ["useEventConnection"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R6 K19 ["createElement"]
       65 DUPCLOSURE                       R11 K20 [PROTO_2]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R8
       73 RETURN                           R11 1
