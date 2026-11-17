PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Mouse"]
        4 GETTABLEKS                       R3 R1 K2 ["DraggerType"]
        6 GETTABLEKS                       R4 R1 K3 ["Context"]
        8 NEWTABLE                         R5 0 0
       10 GETIMPORT                        R6 K7 [Enum.RibbonTool.Move]
       12 JUMPIFNOTEQ                      R3 R6 ; [+20]
       14 MOVE                             R7 R5
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K8 ["new"]
       18 MOVE                             R9 R4
       19 LOADNIL                          R10
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R11 R11 K9 ["TransformHandlesImplementation"]
       23 GETTABLEKS                       R11 R11 K8 ["new"]
       25 MOVE                             R12 R4
       26 CALL                             R11 1 -1
       27 CALL                             R8 -1 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R6 K12 [table.insert]
       31 CALL                             R6 -1 0
       32 JUMP                             ; [+45]
       33 GETIMPORT                        R6 K14 [Enum.RibbonTool.Scale]
       35 JUMPIFNOTEQ                      R3 R6 ; [+20]
       37 MOVE                             R7 R5
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R8 R8 K8 ["new"]
       41 MOVE                             R9 R4
       42 LOADNIL                          R10
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K15 ["ExtrudeHandlesImplementation"]
       46 GETTABLEKS                       R11 R11 K8 ["new"]
       48 MOVE                             R12 R4
       49 CALL                             R11 1 -1
       50 CALL                             R8 -1 -1
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R6 K12 [table.insert]
       54 CALL                             R6 -1 0
       55 JUMP                             ; [+22]
       56 GETIMPORT                        R6 K17 [Enum.RibbonTool.Rotate]
       58 JUMPIFNOTEQ                      R3 R6 ; [+19]
       60 MOVE                             R7 R5
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K8 ["new"]
       64 MOVE                             R9 R4
       65 LOADNIL                          R10
       66 GETUPVAL                         R11 1
       67 GETTABLEKS                       R11 R11 K9 ["TransformHandlesImplementation"]
       69 GETTABLEKS                       R11 R11 K8 ["new"]
       71 MOVE                             R12 R4
       72 CALL                             R11 1 -1
       73 CALL                             R8 -1 -1
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R6 K12 [table.insert]
       77 CALL                             R6 -1 0
       78 LOADK                            R6 K18 ["NoDragger"]
       79 JUMPIFNOT                        R3 ; [+2]
       80 GETTABLEKS                       R6 R3 K19 ["Name"]
       82 DUPTABLE                         R7 K25 [{["AnalyticsName"], ["AllowDragSelect"] = True, ["AllowFreeformDrag"], ["HandlesList"]}]
       83 SETTABLEKS                       R6 R7 K20 ["AnalyticsName"]
       85 JUMPIFEQKNIL                     R3 ; [+2]
       87 LOADB                            R8 0 +1
       88 LOADB                            R8 1
       89 SETTABLEKS                       R8 R7 K23 ["AllowFreeformDrag"]
       91 SETTABLEKS                       R5 R7 K24 ["HandlesList"]
       93 GETUPVAL                         R8 4
       94 GETTABLEKS                       R8 R8 K26 ["createElement"]
       96 GETUPVAL                         R9 5
       97 DUPTABLE                         R10 K30 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
       98 SETTABLEKS                       R2 R10 K1 ["Mouse"]
      100 SETTABLEKS                       R4 R10 K27 ["DraggerContext"]
      102 GETUPVAL                         R11 1
      103 SETTABLEKS                       R11 R10 K28 ["DraggerSchema"]
      105 SETTABLEKS                       R7 R10 K29 ["DraggerSettings"]
      107 CALL                             R8 2 -1
      108 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["DraggerFramework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["DraggerTools"]
       21 GETTABLEKS                       R4 R4 K8 ["DraggerToolComponent"]
       23 GETTABLEKS                       R5 R3 K9 ["Handles"]
       25 GETTABLEKS                       R5 R5 K10 ["MoveHandles"]
       27 GETTABLEKS                       R6 R3 K9 ["Handles"]
       29 GETTABLEKS                       R6 R6 K11 ["RotateHandles"]
       31 GETTABLEKS                       R7 R3 K9 ["Handles"]
       33 GETTABLEKS                       R7 R7 K12 ["ExtrudeHandles"]
       35 GETIMPORT                        R8 K4 [require]
       37 GETTABLEKS                       R9 R0 K13 ["DraggerSchema"]
       39 GETTABLEKS                       R9 R9 K13 ["DraggerSchema"]
       41 CALL                             R8 1 1
       42 GETTABLEKS                       R9 R2 K14 ["PureComponent"]
       44 LOADK                            R11 K15 ["MeshEditingDragger"]
       45 NAMECALL                         R9 R9 K16 ["extend"]
       47 CALL                             R9 2 1
       48 DUPCLOSURE                       R10 K17 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R10 R9 K18 ["render"]
       57 RETURN                           R9 1
