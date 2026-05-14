PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["StoreContext"]
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["StoreContext"]
       10 GETTABLEKS                       R1 R1 K1 ["Consumer"]
       12 CALL                             R0 1 1
       13 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["useContext"]
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K11 ["Flags"]
       38 GETTABLEKS                       R6 R6 K12 ["getFFlagStyleEditorFixWarnings"]
       40 CALL                             R5 1 1
       41 CALL                             R5 0 1
       42 DUPCLOSURE                       R6 K13 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 RETURN                           R6 1
