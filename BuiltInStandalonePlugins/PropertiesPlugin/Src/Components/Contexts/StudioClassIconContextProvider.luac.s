PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 LOADK                            R3 K1 ["Instance"]
        4 JUMP                             ; [+1]
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["GetClassIcon"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Components"]
        4 GETTABLEKS                       R2 R2 K1 ["Contexts"]
        6 GETTABLEKS                       R2 R2 K2 ["ClassIconContextProvider"]
        8 DUPTABLE                         R3 K4 [{"getClassIcon"}]
        9 DUPCLOSURE                       R4 K5 [PROTO_0]
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R4 R3 K3 ["getClassIcon"]
       13 GETTABLEKS                       R4 R0 K6 ["children"]
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["PropertiesPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Properties"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["createElement"]
       29 DUPCLOSURE                       R5 K14 [PROTO_1]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R0
       33 RETURN                           R5 1
