PROTO_0:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["moveToWithIk"]
        4 CALL                             R3 3 -1
        5 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["rotateToWithIk"]
        4 CALL                             R3 3 -1
        5 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Mouse"]
        4 GETTABLEKS                       R3 R1 K2 ["Tool"]
        6 GETTABLEKS                       R4 R1 K3 ["Context"]
        8 DUPCLOSURE                       R5 K4 [PROTO_0]
        9 DUPCLOSURE                       R6 K5 [PROTO_1]
       10 NEWTABLE                         R7 0 0
       12 GETIMPORT                        R8 K9 [Enum.RibbonTool.Move]
       14 JUMPIFNOTEQ                      R3 R8 ; [+23]
       16 MOVE                             R9 R7
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R10 R10 K10 ["new"]
       20 MOVE                             R11 R4
       21 LOADNIL                          R12
       22 GETUPVAL                         R13 1
       23 GETTABLEKS                       R13 R13 K11 ["TransformHandlesImplementation"]
       25 GETTABLEKS                       R13 R13 K10 ["new"]
       27 MOVE                             R14 R4
       28 MOVE                             R15 R5
       29 GETIMPORT                        R16 K9 [Enum.RibbonTool.Move]
       31 CALL                             R13 3 -1
       32 CALL                             R10 -1 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R8 K14 [table.insert]
       36 CALL                             R8 -1 0
       37 JUMP                             ; [+25]
       38 GETIMPORT                        R8 K16 [Enum.RibbonTool.Rotate]
       40 JUMPIFNOTEQ                      R3 R8 ; [+22]
       42 MOVE                             R9 R7
       43 GETUPVAL                         R10 2
       44 GETTABLEKS                       R10 R10 K10 ["new"]
       46 MOVE                             R11 R4
       47 LOADNIL                          R12
       48 GETUPVAL                         R13 1
       49 GETTABLEKS                       R13 R13 K11 ["TransformHandlesImplementation"]
       51 GETTABLEKS                       R13 R13 K10 ["new"]
       53 MOVE                             R14 R4
       54 MOVE                             R15 R6
       55 GETIMPORT                        R16 K16 [Enum.RibbonTool.Rotate]
       57 CALL                             R13 3 -1
       58 CALL                             R10 -1 -1
       59 FASTCALL                         TABLE_INSERT ; [+2]
       60 GETIMPORT                        R8 K14 [table.insert]
       62 CALL                             R8 -1 0
       63 DUPTABLE                         R8 K24 [{["AnalyticsName"], ["AllowDragSelect"] = False, ["AllowFreeformDrag"] = False, ["ShowLocalSpaceIndicator"] = True, ["HandlesList"]}]
       64 LOADK                            R10 K25 ["AnimationClipEditor"]
       65 GETTABLEKS                       R11 R3 K26 ["Name"]
       67 CONCAT                           R9 R10 R11
       68 SETTABLEKS                       R9 R8 K17 ["AnalyticsName"]
       70 SETTABLEKS                       R7 R8 K23 ["HandlesList"]
       72 GETUPVAL                         R9 3
       73 GETTABLEKS                       R9 R9 K27 ["createElement"]
       75 GETUPVAL                         R10 4
       76 DUPTABLE                         R11 K31 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
       77 SETTABLEKS                       R2 R11 K1 ["Mouse"]
       79 SETTABLEKS                       R4 R11 K28 ["DraggerContext"]
       81 GETUPVAL                         R12 1
       82 SETTABLEKS                       R12 R11 K29 ["DraggerSchema"]
       84 SETTABLEKS                       R8 R11 K30 ["DraggerSettings"]
       86 CALL                             R9 2 -1
       87 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K6 ["Packages"]
       16 GETTABLEKS                       R2 R2 K8 ["DraggerFramework"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K9 ["DraggerTools"]
       22 GETTABLEKS                       R4 R4 K10 ["DraggerToolComponent"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R2 K11 ["Handles"]
       29 GETTABLEKS                       R5 R5 K12 ["MoveHandles"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R2 K11 ["Handles"]
       36 GETTABLEKS                       R6 R6 K13 ["RotateHandles"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Src"]
       43 GETTABLEKS                       R7 R7 K15 ["Util"]
       45 GETTABLEKS                       R7 R7 K16 ["DraggerSchema"]
       47 GETTABLEKS                       R7 R7 K16 ["DraggerSchema"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R1 K17 ["PureComponent"]
       52 LOADK                            R9 K18 ["AnimationClipEditorDragger"]
       53 NAMECALL                         R7 R7 K19 ["extend"]
       55 CALL                             R7 2 1
       56 DUPCLOSURE                       R8 K20 [PROTO_2]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R8 R7 K21 ["render"]
       64 RETURN                           R7 1
