PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["output"]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Debug payload must have an output node defined for mockProps to work"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETIMPORT                        R1 K6 [table.clone]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K7 ["lookup"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["output"]
       17 GETTABLE                         R2 R3 R4
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R0 ; [+7]
       20 MOVE                             R2 R0
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 SETTABLE                         R6 R1 R5
       25 FORGLOOP                         R2 2 ; [-2]
       27 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["output"]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Debug payload must have an output node defined for mockProps to work"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 DUPTABLE                         R1 K12 [{"GraphPayload", "Position", "PropertyLookup", "StateLookup", "IsGeneric", "Size", "text", "editName"}]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K13 ["lookup"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K0 ["output"]
       16 GETTABLE                         R2 R3 R4
       17 SETTABLEKS                       R2 R1 K4 ["GraphPayload"]
       19 GETIMPORT                        R2 K16 [Vector2.zero]
       21 SETTABLEKS                       R2 R1 K5 ["Position"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K6 ["PropertyLookup"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R1 K7 ["StateLookup"]
       31 LOADB                            R2 0
       32 SETTABLEKS                       R2 R1 K8 ["IsGeneric"]
       34 GETIMPORT                        R2 K18 [Vector2.new]
       36 LOADN                            R3 100
       37 LOADN                            R4 100
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K9 ["Size"]
       41 LOADK                            R2 K19 ["Test Node"]
       42 SETTABLEKS                       R2 R1 K10 ["text"]
       44 LOADK                            R2 K20 [""]
       45 SETTABLEKS                       R2 R1 K11 ["editName"]
       47 JUMPIFNOT                        R0 ; [+8]
       48 GETIMPORT                        R2 K22 [pairs]
       50 MOVE                             R3 R0
       51 CALL                             R2 1 3
       52 FORGPREP_NEXT                    R2
       53 SETTABLE                         R6 R1 R5
       54 FORGLOOP                         R2 2 ; [-2]
       56 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["output"]
        3 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        5 LOADK                            R2 K1 ["Debug payload must have an output node defined for mockNodeId to work"]
        6 GETIMPORT                        R0 K3 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K0 ["output"]
       12 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["NodeView"]
       13 GETTABLEKS                       R3 R4 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R3 K9 ["CompositorNode"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["NodeViewTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Util"]
       27 GETTABLEKS                       R4 R5 K12 ["debug_payload"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 4 0
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R5 R4 K14 ["getGraphPayloadMap"]
       36 DUPCLOSURE                       R5 K15 [PROTO_1]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R4 K16 ["mockNode"]
       40 DUPCLOSURE                       R5 K17 [PROTO_2]
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R5 R4 K18 ["mockProps"]
       44 DUPCLOSURE                       R5 K19 [PROTO_3]
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R5 R4 K20 ["mockNodeId"]
       48 RETURN                           R4 1
