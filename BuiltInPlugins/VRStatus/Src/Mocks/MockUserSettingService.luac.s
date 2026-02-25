PROTO_0:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["new"]
        5 CALL                             R1 0 1
        6 SETTABLEKS                       R1 R0 K1 ["VREnabledSignal"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["VREnabled"]
       11 GETUPVAL                         R3 1
       12 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K4 [setmetatable]
       17 CALL                             R1 2 0
       18 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["VREnabled"] ; [+4]
        2 GETTABLEKS                       R2 R0 K1 ["VREnabledSignal"]
        4 RETURN                           R2 1
        5 LOADNIL                          R2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R3 K8 ["Signal"]
       20 NEWTABLE                         R3 4 0
       22 SETTABLEKS                       R3 R3 K9 ["__index"]
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R4 R3 K11 ["new"]
       29 DUPCLOSURE                       R4 K12 [PROTO_1]
       30 SETTABLEKS                       R4 R3 K13 ["GetPropertyChangedSignal"]
       32 RETURN                           R3 1
