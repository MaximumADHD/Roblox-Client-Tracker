PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["targetRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["targetRef"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["targetRef"]
       11 GETTABLEKS                       R0 R0 K2 ["current"]
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K3 ["props"]
       19 GETTABLEKS                       R1 R1 K4 ["DefinitionId"]
       21 SETTABLEKS                       R1 R0 K5 ["_attachedDefinitionId"]
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K3 ["props"]
       26 GETTABLEKS                       R0 R0 K6 ["CalloutController"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K5 ["_attachedDefinitionId"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K3 ["props"]
       34 GETTABLEKS                       R3 R3 K7 ["LocationId"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K1 ["targetRef"]
       39 GETTABLEKS                       R4 R4 K2 ["current"]
       41 NAMECALL                         R0 R0 K8 ["attachCallout"]
       43 CALL                             R0 4 0
       44 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETIMPORT                        R1 K2 [spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["_attachedDefinitionId"]
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETTABLEKS                       R1 R0 K2 ["props"]
        8 GETTABLEKS                       R1 R1 K3 ["CalloutController"]
       10 GETTABLEKS                       R3 R0 K1 ["_attachedDefinitionId"]
       12 NAMECALL                         R1 R1 K4 ["detachCalloutsByDefinitionId"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Offset"]
        4 JUMPIF                           R1 ; [+5]
        5 GETIMPORT                        R1 K4 [Vector2.new]
        7 LOADN                            R2 0
        8 LOADN                            R3 0
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["createElement"]
       13 LOADK                            R3 K6 ["Frame"]
       14 NEWTABLE                         R4 4 0
       16 LOADN                            R5 1
       17 SETTABLEKS                       R5 R4 K7 ["BackgroundTransparency"]
       19 GETIMPORT                        R5 K9 [UDim2.new]
       21 LOADN                            R6 0
       22 GETTABLEKS                       R7 R1 K10 ["X"]
       24 LOADN                            R8 0
       25 GETTABLEKS                       R9 R1 K11 ["Y"]
       27 CALL                             R5 4 1
       28 SETTABLEKS                       R5 R4 K12 ["Position"]
       30 GETIMPORT                        R5 K9 [UDim2.new]
       32 LOADN                            R6 1
       33 LOADN                            R7 0
       34 LOADN                            R8 1
       35 LOADN                            R9 0
       36 CALL                             R5 4 1
       37 SETTABLEKS                       R5 R4 K13 ["Size"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K14 ["Ref"]
       42 GETTABLEKS                       R6 R0 K15 ["targetRef"]
       44 SETTABLE                         R6 R4 R5
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["CalloutController"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       36 LOADK                            R8 K15 ["TeachingCallout"]
       37 NAMECALL                         R6 R6 K16 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R7 R6 K18 ["init"]
       44 DUPCLOSURE                       R7 K19 [PROTO_2]
       45 SETTABLEKS                       R7 R6 K20 ["didMount"]
       47 DUPCLOSURE                       R7 K21 [PROTO_3]
       48 SETTABLEKS                       R7 R6 K22 ["willUnmount"]
       50 DUPCLOSURE                       R7 K23 [PROTO_4]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R7 R6 K24 ["render"]
       54 MOVE                             R7 R4
       55 DUPTABLE                         R8 K25 [{"CalloutController"}]
       56 SETTABLEKS                       R5 R8 K13 ["CalloutController"]
       58 CALL                             R7 1 1
       59 MOVE                             R8 R6
       60 CALL                             R7 1 1
       61 MOVE                             R6 R7
       62 RETURN                           R6 1
