PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Mouse"]
        4 GETTABLEKS                       R3 R1 K2 ["DraggerType"]
        6 GETTABLEKS                       R4 R1 K3 ["Context"]
        8 NEWTABLE                         R5 0 0
       10 GETIMPORT                        R6 K7 [Enum.RibbonTool.Move]
       12 JUMPIFNOTEQ                      R3 R6 ; [+20]
       14 MOVE                             R7 R5
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K8 ["new"]
       18 MOVE                             R9 R4
       19 LOADNIL                          R10
       20 GETUPVAL                         R13 1
       21 GETTABLEKS                       R12 R13 K9 ["TransformHandlesImplementation"]
       23 GETTABLEKS                       R11 R12 K8 ["new"]
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
       38 GETUPVAL                         R9 2
       39 GETTABLEKS                       R8 R9 K8 ["new"]
       41 MOVE                             R9 R4
       42 LOADNIL                          R10
       43 GETUPVAL                         R13 1
       44 GETTABLEKS                       R12 R13 K15 ["ExtrudeHandlesImplementation"]
       46 GETTABLEKS                       R11 R12 K8 ["new"]
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
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R8 R9 K8 ["new"]
       64 MOVE                             R9 R4
       65 LOADNIL                          R10
       66 GETUPVAL                         R13 1
       67 GETTABLEKS                       R12 R13 K9 ["TransformHandlesImplementation"]
       69 GETTABLEKS                       R11 R12 K8 ["new"]
       71 MOVE                             R12 R4
       72 CALL                             R11 1 -1
       73 CALL                             R8 -1 -1
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R6 K12 [table.insert]
       77 CALL                             R6 -1 0
       78 LOADK                            R6 K18 ["NoDragger"]
       79 JUMPIFNOT                        R3 ; [+2]
       80 GETTABLEKS                       R6 R3 K19 ["Name"]
       82 DUPTABLE                         R7 K24 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "HandlesList"}]
       83 GETUPVAL                         R9 4
       84 CALL                             R9 0 1
       85 JUMPIFNOT                        R9 ; [+2]
       86 MOVE                             R8 R6
       87 JUMP                             ; [+2]
       88 GETTABLEKS                       R8 R3 K19 ["Name"]
       90 SETTABLEKS                       R8 R7 K20 ["AnalyticsName"]
       92 LOADB                            R8 1
       93 SETTABLEKS                       R8 R7 K21 ["AllowDragSelect"]
       95 GETUPVAL                         R8 4
       96 CALL                             R8 0 1
       97 JUMPIFNOT                        R8 ; [+4]
       98 JUMPIFEQKNIL                     R3 ; [+2]
      100 LOADB                            R8 0 +1
      101 LOADB                            R8 1
      102 SETTABLEKS                       R8 R7 K22 ["AllowFreeformDrag"]
      104 SETTABLEKS                       R5 R7 K23 ["HandlesList"]
      106 GETUPVAL                         R9 5
      107 GETTABLEKS                       R8 R9 K25 ["createElement"]
      109 GETUPVAL                         R9 6
      110 DUPTABLE                         R10 K29 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
      111 SETTABLEKS                       R2 R10 K1 ["Mouse"]
      113 SETTABLEKS                       R4 R10 K26 ["DraggerContext"]
      115 GETUPVAL                         R11 1
      116 SETTABLEKS                       R11 R10 K27 ["DraggerSchema"]
      118 SETTABLEKS                       R7 R10 K28 ["DraggerSettings"]
      120 CALL                             R8 2 -1
      121 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["DraggerFramework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R3 K7 ["DraggerTools"]
       21 GETTABLEKS                       R4 R5 K8 ["DraggerToolComponent"]
       23 GETTABLEKS                       R6 R3 K9 ["Handles"]
       25 GETTABLEKS                       R5 R6 K10 ["MoveHandles"]
       27 GETTABLEKS                       R7 R3 K9 ["Handles"]
       29 GETTABLEKS                       R6 R7 K11 ["RotateHandles"]
       31 GETTABLEKS                       R8 R3 K9 ["Handles"]
       33 GETTABLEKS                       R7 R8 K12 ["ExtrudeHandles"]
       35 GETIMPORT                        R8 K4 [require]
       37 GETTABLEKS                       R10 R0 K13 ["DraggerSchema"]
       39 GETTABLEKS                       R9 R10 K13 ["DraggerSchema"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K4 [require]
       44 GETTABLEKS                       R11 R0 K14 ["Flags"]
       46 GETTABLEKS                       R10 R11 K15 ["getFFlagAvatarPreviewerCageEditingTools"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R10 R2 K16 ["PureComponent"]
       51 LOADK                            R12 K17 ["MeshEditingDragger"]
       52 NAMECALL                         R10 R10 K18 ["extend"]
       54 CALL                             R10 2 1
       55 DUPCLOSURE                       R11 K19 [PROTO_0]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R11 R10 K20 ["render"]
       65 RETURN                           R10 1
