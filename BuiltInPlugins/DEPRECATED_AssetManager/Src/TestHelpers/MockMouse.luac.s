PROTO_0:
        0 DUPTABLE                         R1 K6 [{[1], ["UnitRay"], ["Target"] = , ["WheelForward"], ["WheelBackward"]}]
        1 GETIMPORT                        R2 K9 [CFrame.new]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["Origin"]
        6 GETIMPORT                        R2 K11 [Ray.new]
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R3 K13 [Vector3.new]
       11 CALL                             R3 0 1
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R4 K13 [Vector3.new]
       15 CALL                             R4 0 1
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K1 ["UnitRay"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K8 ["new"]
       22 CALL                             R2 0 1
       23 SETTABLEKS                       R2 R1 K4 ["WheelForward"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K8 ["new"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R1 K5 ["WheelBackward"]
       31 GETUPVAL                         R2 1
       32 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       34 GETIMPORT                        R0 K15 [setmetatable]
       36 CALL                             R0 2 1
       37 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R2 K8 ["Signal"]
       20 NEWTABLE                         R3 2 0
       22 SETTABLEKS                       R3 R3 K9 ["__index"]
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R4 R3 K11 ["new"]
       29 RETURN                           R3 1
