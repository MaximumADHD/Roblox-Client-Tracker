PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K6 [{["testId"], ["LayoutOrder"], ["tag"] = "col gap-small size-0 auto-xy"}]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K7 ["StatusLabel"]
       12 GETTABLEKS                       R5 R5 K8 ["Details"]
       14 SETTABLEKS                       R5 R4 K2 ["testId"]
       16 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       18 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       20 DUPTABLE                         R5 K11 [{"Step", "Cancel"}]
       21 GETTABLEKS                       R7 R0 K12 ["stepText"]
       23 JUMPIFNOT                        R7 ; [+40]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K1 ["createElement"]
       27 GETUPVAL                         R7 4
       28 DUPTABLE                         R8 K19 [{["LayoutOrder"], ["testId"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["sizeConstraint"], ["tag"] = "size-0 auto-xy text-body-small content-default"}]
       29 MOVE                             R9 R1
       30 CALL                             R9 0 1
       31 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K7 ["StatusLabel"]
       36 GETTABLEKS                       R9 R9 K9 ["Step"]
       38 SETTABLEKS                       R9 R8 K2 ["testId"]
       40 GETTABLEKS                       R9 R0 K12 ["stepText"]
       42 SETTABLEKS                       R9 R8 K13 ["Text"]
       44 GETIMPORT                        R9 K22 [Enum.TextXAlignment.Left]
       46 SETTABLEKS                       R9 R8 K16 ["TextXAlignment"]
       48 DUPTABLE                         R9 K25 [{"MinSize", "MaxSize"}]
       49 GETIMPORT                        R10 K28 [Vector2.zero]
       51 SETTABLEKS                       R10 R9 K23 ["MinSize"]
       53 GETIMPORT                        R10 K30 [Vector2.new]
       55 LOADN                            R11 240
       56 LOADK                            R12 K31 [Infinity]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K24 ["MaxSize"]
       60 SETTABLEKS                       R9 R8 K17 ["sizeConstraint"]
       62 CALL                             R6 2 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R6
       65 SETTABLEKS                       R6 R5 K9 ["Step"]
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K1 ["createElement"]
       70 GETUPVAL                         R7 5
       71 DUPTABLE                         R8 K36 [{"LayoutOrder", "testId", "text", "onActivated", "size", "variant"}]
       72 MOVE                             R9 R1
       73 CALL                             R9 0 1
       74 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       76 GETUPVAL                         R9 3
       77 GETTABLEKS                       R9 R9 K7 ["StatusLabel"]
       79 GETTABLEKS                       R9 R9 K10 ["Cancel"]
       81 SETTABLEKS                       R9 R8 K2 ["testId"]
       83 GETTABLEKS                       R9 R0 K37 ["cancelText"]
       85 SETTABLEKS                       R9 R8 K32 ["text"]
       87 GETTABLEKS                       R9 R0 K38 ["onCancel"]
       89 SETTABLEKS                       R9 R8 K33 ["onActivated"]
       91 GETUPVAL                         R9 6
       92 GETTABLEKS                       R9 R9 K39 ["Enums"]
       94 GETTABLEKS                       R9 R9 K40 ["InputSize"]
       96 GETTABLEKS                       R9 R9 K41 ["Small"]
       98 SETTABLEKS                       R9 R8 K34 ["size"]
      100 GETUPVAL                         R9 6
      101 GETTABLEKS                       R9 R9 K39 ["Enums"]
      103 GETTABLEKS                       R9 R9 K42 ["ButtonVariant"]
      105 GETTABLEKS                       R9 R9 K43 ["Standard"]
      107 SETTABLEKS                       R9 R8 K35 ["variant"]
      109 CALL                             R6 2 1
      110 SETTABLEKS                       R6 R5 K10 ["Cancel"]
      112 CALL                             R2 3 -1
      113 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoadingSkeleton3D"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["TestIds"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Types"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R1 K12 ["View"]
       40 GETTABLEKS                       R7 R1 K13 ["Text"]
       42 GETTABLEKS                       R8 R1 K14 ["Button"]
       44 DUPCLOSURE                       R9 K15 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R1
       52 RETURN                           R9 1
