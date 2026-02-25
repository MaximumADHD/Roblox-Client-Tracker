PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["lookup"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K4 ["output"]
        8 GETTABLE                         R2 R3 R4
        9 CALL                             R1 1 1
       10 JUMPIFNOT                        R0 ; [+7]
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 SETTABLE                         R6 R1 R5
       16 FORGLOOP                         R2 2 ; [-2]
       18 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K7 [{"GraphPayload", "Position", "PropertyLookup", "StateLookup", "IsGeneric", "Size", "text"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K8 ["lookup"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K9 ["output"]
        7 GETTABLE                         R2 R3 R4
        8 SETTABLEKS                       R2 R1 K0 ["GraphPayload"]
       10 GETIMPORT                        R2 K12 [Vector2.zero]
       12 SETTABLEKS                       R2 R1 K1 ["Position"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K2 ["PropertyLookup"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K3 ["StateLookup"]
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K4 ["IsGeneric"]
       25 GETIMPORT                        R2 K14 [Vector2.new]
       27 LOADN                            R3 100
       28 LOADN                            R4 100
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R1 K5 ["Size"]
       32 LOADK                            R2 K15 ["Test Node"]
       33 SETTABLEKS                       R2 R1 K6 ["text"]
       35 JUMPIFNOT                        R0 ; [+8]
       36 GETIMPORT                        R2 K17 [pairs]
       38 MOVE                             R3 R0
       39 CALL                             R2 1 3
       40 FORGPREP_NEXT                    R2
       41 SETTABLE                         R6 R1 R5
       42 FORGLOOP                         R2 2 ; [-2]
       44 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["output"]
        3 RETURN                           R0 1

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
