PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+6]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["onChange"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["RowStops"]
        4 GETTABLEKS                       R3 R0 K1 ["cell"]
        6 GETTABLEKS                       R4 R3 K2 ["kind"]
        8 JUMPIFNOTEQKS                    R4 K3 ["Number"] ; [+75]
       10 GETUPVAL                         R4 1
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 2
       13 GETUPVAL                         R6 3
       14 DUPTABLE                         R7 K8 [{["tag"] = "row flex-x-fill align-y-center items-center gap-medium", ["Size"], ["LayoutOrder"]}]
       15 GETIMPORT                        R8 K11 [UDim2.new]
       17 LOADN                            R9 1
       18 LOADN                            R10 0
       19 LOADN                            R11 0
       20 GETTABLEKS                       R12 R2 K12 ["CellContentHeight"]
       22 CALL                             R8 4 1
       23 SETTABLEKS                       R8 R7 K6 ["Size"]
       25 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       27 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       29 DUPTABLE                         R8 K15 [{"Label", "NumberInput"}]
       30 GETUPVAL                         R9 2
       31 GETUPVAL                         R10 4
       32 DUPTABLE                         R11 K18 [{["Text"], ["tag"] = "auto-xy text-label-medium", ["LayoutOrder"]}]
       33 GETTABLEKS                       R12 R3 K19 ["name"]
       35 SETTABLEKS                       R12 R11 K16 ["Text"]
       37 MOVE                             R12 R4
       38 CALL                             R12 0 1
       39 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       41 CALL                             R9 2 1
       42 SETTABLEKS                       R9 R8 K13 ["Label"]
       44 GETUPVAL                         R9 2
       45 GETUPVAL                         R10 5
       46 DUPTABLE                         R11 K27 [{["propertyPart"], ["readonly"] = False, ["slider"], ["onEditStart"], ["onChange"], ["onEditFinish"], ["LayoutOrder"]}]
       47 GETTABLEKS                       R12 R3 K28 ["part"]
       49 SETTABLEKS                       R12 R11 K20 ["propertyPart"]
       51 DUPTABLE                         R12 K31 [{"step", "bounds"}]
       52 GETTABLEKS                       R14 R3 K29 ["step"]
       54 ORK                              R13 R14 K32 [0.05]
       55 SETTABLEKS                       R13 R12 K29 ["step"]
       57 GETTABLEKS                       R13 R3 K30 ["bounds"]
       59 SETTABLEKS                       R13 R12 K30 ["bounds"]
       61 SETTABLEKS                       R12 R11 K23 ["slider"]
       63 GETTABLEKS                       R12 R0 K24 ["onEditStart"]
       65 SETTABLEKS                       R12 R11 K24 ["onEditStart"]
       67 NEWCLOSURE                       R12 P0
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R12 R11 K25 ["onChange"]
       71 GETTABLEKS                       R12 R0 K26 ["onEditFinish"]
       73 SETTABLEKS                       R12 R11 K26 ["onEditFinish"]
       75 MOVE                             R12 R4
       76 CALL                             R12 0 1
       77 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K14 ["NumberInput"]
       82 CALL                             R5 3 -1
       83 RETURN                           R5 -1
       84 GETIMPORT                        R4 K34 [error]
       86 LOADK                            R6 K35 ["Cannot create RowStopCell element for kind: %*"]
       87 GETTABLEKS                       R8 R3 K2 ["kind"]
       89 NAMECALL                         R6 R6 K36 ["format"]
       91 CALL                             R6 2 1
       92 MOVE                             R5 R6
       93 CALL                             R4 1 0
       94 LOADNIL                          R4
       95 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["Expressions"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["PropertyTypes"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R1 K11 ["React"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R1 K12 ["ReactUtils"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Components"]
       40 GETTABLEKS                       R8 R8 K7 ["Util"]
       42 GETTABLEKS                       R8 R8 K14 ["Number"]
       44 GETTABLEKS                       R8 R8 K15 ["SingleNumberInput"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K16 ["Hooks"]
       51 GETTABLEKS                       R9 R9 K17 ["useVisualValues"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R3 K18 ["View"]
       56 GETTABLEKS                       R10 R3 K19 ["Text"]
       58 GETTABLEKS                       R11 R6 K20 ["createNextOrder"]
       60 GETTABLEKS                       R12 R5 K21 ["createElement"]
       62 DUPCLOSURE                       R13 K22 [PROTO_1]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R7
       69 GETTABLEKS                       R14 R5 K23 ["memo"]
       71 MOVE                             R15 R13
       72 CALL                             R14 1 -1
       73 RETURN                           R14 -1
