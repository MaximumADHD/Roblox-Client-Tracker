PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetStyleInfo"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_1:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+4]
        2 LOADK                            R4 K0 ["StyleRule"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        8 LOADK                            R3 K2 ["expecting style rule"]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 2 0
       12 GETIMPORT                        R1 K6 [pcall]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 2
       18 JUMPIFNOT                        R1 ; [+1]
       19 RETURN                           R2 1
       20 LOADNIL                          R3
       21 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetAppliedStyles"]
        4 CALL                             R2 2 1
        5 MOVE                             R3 R2
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R9 R7 K1 ["Properties"]
       11 GETTABLE                         R8 R9 R1
       12 JUMPIFNOT                        R8 ; [+9]
       13 GETTABLEKS                       R9 R8 K2 ["Exists"]
       15 JUMPIFNOT                        R9 ; [+6]
       16 GETTABLEKS                       R9 R8 K3 ["IsUsed"]
       18 JUMPIFNOT                        R9 ; [+3]
       19 GETTABLEKS                       R9 R8 K4 ["Value"]
       21 RETURN                           R9 1
       22 FORGLOOP                         R3 2 ; [-14]
       24 LOADNIL                          R3
       25 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 2 0
       24 DUPCLOSURE                       R4 K11 [PROTO_1]
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R4 R3 K12 ["getStyleInfo"]
       28 DUPCLOSURE                       R4 K13 [PROTO_2]
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R4 R3 K14 ["getStyledPropertyValue"]
       32 RETURN                           R3 1
