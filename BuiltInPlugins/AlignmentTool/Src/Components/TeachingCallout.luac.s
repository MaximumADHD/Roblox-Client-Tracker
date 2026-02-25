PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["targetRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_isMounted"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["targetRef"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["targetRef"]
       11 GETTABLEKS                       R0 R1 K2 ["current"]
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K3 ["props"]
       19 GETTABLEKS                       R1 R2 K4 ["DefinitionId"]
       21 SETTABLEKS                       R1 R0 K5 ["_attachedDefinitionId"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K3 ["props"]
       26 GETTABLEKS                       R0 R1 K6 ["CalloutController"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K5 ["_attachedDefinitionId"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K3 ["props"]
       34 GETTABLEKS                       R3 R4 K7 ["LocationId"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K1 ["targetRef"]
       39 GETTABLEKS                       R4 R5 K2 ["current"]
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
        6 GETTABLEKS                       R2 R0 K2 ["props"]
        8 GETTABLEKS                       R1 R2 K3 ["CalloutController"]
       10 GETTABLEKS                       R3 R0 K1 ["_attachedDefinitionId"]
       12 NAMECALL                         R1 R1 K4 ["detachCalloutsByDefinitionId"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Offset"]
        4 JUMPIF                           R1 ; [+5]
        5 GETIMPORT                        R1 K4 [Vector2.new]
        7 LOADN                            R2 0
        8 LOADN                            R3 0
        9 CALL                             R1 2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K5 ["createElement"]
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
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K14 ["Ref"]
       42 GETTABLEKS                       R6 R0 K15 ["targetRef"]
       44 SETTABLE                         R6 R4 R5
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R8 R0 K10 ["Src"]
       31 GETTABLEKS                       R7 R8 K11 ["Utility"]
       33 GETTABLEKS                       R6 R7 K12 ["CalloutController"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       38 LOADK                            R8 K14 ["TeachingCallout"]
       39 NAMECALL                         R6 R6 K15 ["extend"]
       41 CALL                             R6 2 1
       42 DUPCLOSURE                       R7 K16 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R7 R6 K17 ["init"]
       46 DUPCLOSURE                       R7 K18 [PROTO_2]
       47 SETTABLEKS                       R7 R6 K19 ["didMount"]
       49 DUPCLOSURE                       R7 K20 [PROTO_3]
       50 SETTABLEKS                       R7 R6 K21 ["willUnmount"]
       52 DUPCLOSURE                       R7 K22 [PROTO_4]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R7 R6 K23 ["render"]
       56 MOVE                             R7 R4
       57 DUPTABLE                         R8 K24 [{"CalloutController"}]
       58 SETTABLEKS                       R5 R8 K12 ["CalloutController"]
       60 CALL                             R7 1 1
       61 MOVE                             R8 R6
       62 CALL                             R7 1 1
       63 MOVE                             R6 R7
       64 RETURN                           R6 1
