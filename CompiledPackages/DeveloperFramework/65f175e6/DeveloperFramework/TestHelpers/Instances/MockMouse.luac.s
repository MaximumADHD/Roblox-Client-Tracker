PROTO_0:
        0 DUPTABLE                         R1 K12 [{[1] = "rbxasset://SystemCursors/Arrow", ["Origin"], ["UnitRay"], ["Target"] = , ["WheelForward"], ["WheelBackward"], ["Button1Down"], ["Button1Up"], ["DragEnter"], ["Move"]}]
        1 GETIMPORT                        R2 K15 [CFrame.new]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K2 ["Origin"]
        6 GETIMPORT                        R2 K17 [Ray.new]
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R3 K19 [Vector3.new]
       11 CALL                             R3 0 1
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R4 K19 [Vector3.new]
       15 CALL                             R4 0 1
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K3 ["UnitRay"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K14 ["new"]
       22 CALL                             R2 0 1
       23 SETTABLEKS                       R2 R1 K6 ["WheelForward"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K14 ["new"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R1 K7 ["WheelBackward"]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K14 ["new"]
       34 CALL                             R2 0 1
       35 SETTABLEKS                       R2 R1 K8 ["Button1Down"]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K14 ["new"]
       40 CALL                             R2 0 1
       41 SETTABLEKS                       R2 R1 K9 ["Button1Up"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K14 ["new"]
       46 CALL                             R2 0 1
       47 SETTABLEKS                       R2 R1 K10 ["DragEnter"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K14 ["new"]
       52 CALL                             R2 0 1
       53 SETTABLEKS                       R2 R1 K11 ["Move"]
       55 GETUPVAL                         R2 1
       56 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       58 GETIMPORT                        R0 K21 [setmetatable]
       60 CALL                             R0 2 1
       61 RETURN                           R0 1

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
