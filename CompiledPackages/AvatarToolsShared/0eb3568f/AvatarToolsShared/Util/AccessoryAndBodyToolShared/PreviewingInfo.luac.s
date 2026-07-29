PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["previewStatus"]
        2 GETTABLEKS                       R2 R1 K1 ["selectedAssets"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["TABS_KEYS"]
        8 GETTABLEKS                       R4 R4 K3 ["Animations"]
       10 GETTABLE                         R3 R2 R4
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R3 K5 [next]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K2 ["TABS_KEYS"]
       18 GETTABLEKS                       R5 R5 K3 ["Animations"]
       20 GETTABLE                         R4 R2 R5
       21 CALL                             R3 1 2
       22 JUMPIFNOT                        R4 ; [+22]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K6 ["AnimationIdToSequenceId"]
       26 GETTABLE                         R5 R6 R4
       27 JUMPIFNOT                        R5 ; [+5]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K6 ["AnimationIdToSequenceId"]
       31 GETTABLE                         R5 R6 R4
       32 RETURN                           R5 1
       33 GETIMPORT                        R5 K8 [warn]
       35 LOADK                            R7 K9 ["Animation id "]
       36 FASTCALL1                        TOSTRING R4 ; [+3]
       37 MOVE                             R11 R4
       38 GETIMPORT                        R10 K11 [tostring]
       40 CALL                             R10 1 1
       41 MOVE                             R8 R10
       42 LOADK                            R9 K12 [" does not have sequence id defined"]
       43 CONCAT                           R6 R7 R9
       44 CALL                             R5 1 0
       45 LOADNIL                          R5
       46 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["PreviewConstants"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 1 0
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K7 ["getPreviewingAnimationId"]
       16 RETURN                           R1 1
