PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["CFrame"]
        2 GETTABLEKS                       R2 R0 K1 ["Size"]
        4 RETURN                           R1 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R0 R2 K0 ["CFrame"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R1 R2 K1 ["Size"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 RETURN                           R0 2

PROTO_4:
        0 GETUPVAL                         R2 2
        1 GETTABLEKS                       R0 R2 K0 ["CFrame"]
        3 GETTABLEKS                       R1 R2 K1 ["Size"]
        5 SETUPVAL                         R0 0
        6 SETUPVAL                         R1 1
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["PivotTo"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R2 0
        6 SETTABLEKS                       R1 R2 K1 ["Size"]
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetBoundingBox"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 RETURN                           R0 2

PROTO_8:
        0 GETUPVAL                         R0 2
        1 NAMECALL                         R0 R0 K0 ["GetBoundingBox"]
        3 CALL                             R0 1 2
        4 SETUPVAL                         R0 0
        5 SETUPVAL                         R1 1
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["ProcModel flag was not on"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETIMPORT                        R2 K4 [next]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K4 [next]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R2
       15 CALL                             R3 2 1
       16 GETIMPORT                        R4 K4 [next]
       18 MOVE                             R5 R1
       19 CALL                             R4 1 1
       20 GETIMPORT                        R5 K4 [next]
       22 MOVE                             R6 R1
       23 MOVE                             R7 R4
       24 CALL                             R5 2 1
       25 JUMPIFNOT                        R4 ; [+7]
       26 LOADK                            R9 K5 ["ProceduralModel"]
       27 NAMECALL                         R7 R4 K6 ["IsA"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+2]
       31 MOVE                             R6 R4
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 JUMPIFNOT                        R2 ; [+29]
       35 JUMPIF                           R3 ; [+28]
       36 JUMPIF                           R4 ; [+27]
       37 GETTABLEKS                       R7 R2 K7 ["CFrame"]
       39 GETTABLEKS                       R8 R2 K8 ["Size"]
       41 DUPTABLE                         R9 K13 [{"setBounds", "getCurrentBounds", "getInitialBounds", "recomputeInitialBounds"}]
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R10 R9 K9 ["setBounds"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R10 R9 K10 ["getCurrentBounds"]
       51 NEWCLOSURE                       R10 P2
       52 CAPTURE                          REF R7
       53 CAPTURE                          REF R8
       54 SETTABLEKS                       R10 R9 K11 ["getInitialBounds"]
       56 NEWCLOSURE                       R10 P3
       57 CAPTURE                          REF R7
       58 CAPTURE                          REF R8
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R10 R9 K12 ["recomputeInitialBounds"]
       62 CLOSEUPVALS                      R7
       63 RETURN                           R9 1
       64 JUMPIFNOT                        R6 ; [+27]
       65 JUMPIF                           R5 ; [+26]
       66 JUMPIF                           R2 ; [+25]
       67 NAMECALL                         R7 R6 K14 ["GetBoundingBox"]
       69 CALL                             R7 1 2
       70 DUPTABLE                         R9 K13 [{"setBounds", "getCurrentBounds", "getInitialBounds", "recomputeInitialBounds"}]
       71 NEWCLOSURE                       R10 P4
       72 CAPTURE                          VAL R6
       73 SETTABLEKS                       R10 R9 K9 ["setBounds"]
       75 NEWCLOSURE                       R10 P5
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R10 R9 K10 ["getCurrentBounds"]
       79 NEWCLOSURE                       R10 P6
       80 CAPTURE                          REF R7
       81 CAPTURE                          REF R8
       82 SETTABLEKS                       R10 R9 K11 ["getInitialBounds"]
       84 NEWCLOSURE                       R10 P7
       85 CAPTURE                          REF R7
       86 CAPTURE                          REF R8
       87 CAPTURE                          VAL R6
       88 SETTABLEKS                       R10 R9 K12 ["recomputeInitialBounds"]
       90 CLOSEUPVALS                      R7
       91 RETURN                           R9 1
       92 LOADNIL                          R7
       93 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K6 ["Flags"]
       14 GETTABLEKS                       R1 R1 K7 ["getFFlagDraggerEditProcModels"]
       16 MOVE                             R2 R1
       17 CALL                             R2 0 1
       18 DUPCLOSURE                       R3 K8 [PROTO_0]
       19 DUPCLOSURE                       R4 K9 [PROTO_9]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 RETURN                           R4 1
