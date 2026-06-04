PROTO_0:
        0 DUPTABLE                         R1 K10 [{"Icon", "Origin", "UnitRay", "Target", "WheelForward", "WheelBackward", "Button1Down", "Button1Up", "DragEnter", "Move"}]
        1 LOADK                            R2 K11 ["rbxasset://SystemCursors/Arrow"]
        2 SETTABLEKS                       R2 R1 K0 ["Icon"]
        4 GETIMPORT                        R2 K14 [CFrame.new]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K1 ["Origin"]
        9 GETIMPORT                        R2 K16 [Ray.new]
       11 FASTCALL                         VECTOR ; [+2]
       12 GETIMPORT                        R3 K18 [Vector3.new]
       14 CALL                             R3 0 1
       15 FASTCALL                         VECTOR ; [+2]
       16 GETIMPORT                        R4 K18 [Vector3.new]
       18 CALL                             R4 0 1
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R1 K2 ["UnitRay"]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K3 ["Target"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K13 ["new"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R1 K4 ["WheelForward"]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K13 ["new"]
       34 CALL                             R2 0 1
       35 SETTABLEKS                       R2 R1 K5 ["WheelBackward"]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K13 ["new"]
       40 CALL                             R2 0 1
       41 SETTABLEKS                       R2 R1 K6 ["Button1Down"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K13 ["new"]
       46 CALL                             R2 0 1
       47 SETTABLEKS                       R2 R1 K7 ["Button1Up"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K13 ["new"]
       52 CALL                             R2 0 1
       53 SETTABLEKS                       R2 R1 K8 ["DragEnter"]
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K13 ["new"]
       58 CALL                             R2 0 1
       59 SETTABLEKS                       R2 R1 K9 ["Move"]
       61 GETUPVAL                         R2 1
       62 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       64 GETIMPORT                        R0 K20 [setmetatable]
       66 CALL                             R0 2 1
       67 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Util"]
       13 GETTABLEKS                       R2 R2 K6 ["Signal"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 SETTABLEKS                       R2 R2 K7 ["__index"]
       20 DUPCLOSURE                       R3 K8 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R2 K9 ["new"]
       25 DUPCLOSURE                       R3 K10 [PROTO_1]
       26 SETTABLEKS                       R3 R2 K11 ["Destroy"]
       28 RETURN                           R2 1
