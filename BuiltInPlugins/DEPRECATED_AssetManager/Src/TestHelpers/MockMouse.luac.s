PROTO_0:
        0 DUPTABLE                         R1 K5 [{"Origin", "UnitRay", "Target", "WheelForward", "WheelBackward"}]
        1 GETIMPORT                        R2 K8 [CFrame.new]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["Origin"]
        6 GETIMPORT                        R2 K10 [Ray.new]
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R3 K12 [Vector3.new]
       11 CALL                             R3 0 1
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R4 K12 [Vector3.new]
       15 CALL                             R4 0 1
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K1 ["UnitRay"]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K2 ["Target"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K7 ["new"]
       25 CALL                             R2 0 1
       26 SETTABLEKS                       R2 R1 K3 ["WheelForward"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K7 ["new"]
       31 CALL                             R2 0 1
       32 SETTABLEKS                       R2 R1 K4 ["WheelBackward"]
       34 GETUPVAL                         R2 1
       35 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       37 GETIMPORT                        R0 K14 [setmetatable]
       39 CALL                             R0 2 1
       40 RETURN                           R0 1

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
       20 NEWTABLE                         R3 2 0
       22 SETTABLEKS                       R3 R3 K9 ["__index"]
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R4 R3 K11 ["new"]
       29 RETURN                           R3 1
