PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["RowStops"]
        4 GETTABLEKS                       R3 R0 K1 ["cell"]
        6 GETTABLEKS                       R4 R3 K2 ["kind"]
        8 JUMPIFNOTEQKS                    R4 K3 ["Number"] ; [+71]
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
       46 DUPTABLE                         R11 K26 [{["propertyPart"], ["readonly"] = False, ["slider"], ["onEdit"], ["onFocusGained"], ["LayoutOrder"]}]
       47 GETTABLEKS                       R12 R3 K27 ["part"]
       49 SETTABLEKS                       R12 R11 K20 ["propertyPart"]
       51 DUPTABLE                         R12 K30 [{"step", "bounds"}]
       52 GETTABLEKS                       R14 R3 K28 ["step"]
       54 ORK                              R13 R14 K31 [0.05]
       55 SETTABLEKS                       R13 R12 K28 ["step"]
       57 GETTABLEKS                       R13 R3 K29 ["bounds"]
       59 SETTABLEKS                       R13 R12 K29 ["bounds"]
       61 SETTABLEKS                       R12 R11 K23 ["slider"]
       63 GETTABLEKS                       R12 R3 K24 ["onEdit"]
       65 SETTABLEKS                       R12 R11 K24 ["onEdit"]
       67 GETTABLEKS                       R12 R0 K32 ["onSelected"]
       69 SETTABLEKS                       R12 R11 K25 ["onFocusGained"]
       71 MOVE                             R12 R4
       72 CALL                             R12 0 1
       73 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K14 ["NumberInput"]
       78 CALL                             R5 3 -1
       79 RETURN                           R5 -1
       80 GETIMPORT                        R4 K34 [error]
       82 LOADK                            R5 K35 ["Cannot create RowStopCell element for kind: %*"]
       83 GETTABLEKS                       R7 R3 K2 ["kind"]
       85 NAMECALL                         R5 R5 K36 ["format"]
       87 CALL                             R5 2 1
       88 CALL                             R4 1 0
       89 LOADNIL                          R4
       90 RETURN                           R4 1

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
       38 GETTABLEKS                       R8 R0 K13 ["RpcTypes"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Components"]
       45 GETTABLEKS                       R9 R9 K7 ["Util"]
       47 GETTABLEKS                       R9 R9 K15 ["Number"]
       49 GETTABLEKS                       R9 R9 K16 ["SingleNumberInput"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       56 GETTABLEKS                       R10 R10 K18 ["useVisualValues"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R3 K19 ["View"]
       61 GETTABLEKS                       R11 R3 K20 ["Text"]
       63 GETTABLEKS                       R12 R6 K21 ["createNextOrder"]
       65 GETTABLEKS                       R13 R5 K22 ["createElement"]
       67 DUPCLOSURE                       R14 K23 [PROTO_0]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R8
       74 GETTABLEKS                       R15 R5 K24 ["memo"]
       76 MOVE                             R16 R14
       77 CALL                             R15 1 -1
       78 RETURN                           R15 -1
