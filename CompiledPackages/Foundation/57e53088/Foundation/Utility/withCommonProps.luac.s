PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+33]
        7 GETTABLEKS                       R2 R0 K3 ["AnchorPoint"]
        9 SETTABLEKS                       R2 R1 K3 ["AnchorPoint"]
       11 GETTABLEKS                       R2 R0 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R2 R1 K4 ["LayoutOrder"]
       15 GETTABLEKS                       R2 R0 K5 ["Position"]
       17 SETTABLEKS                       R2 R1 K5 ["Position"]
       19 GETTABLEKS                       R2 R0 K6 ["Visible"]
       21 SETTABLEKS                       R2 R1 K6 ["Visible"]
       23 GETTABLEKS                       R2 R0 K7 ["ZIndex"]
       25 SETTABLEKS                       R2 R1 K7 ["ZIndex"]
       27 GETTABLEKS                       R2 R0 K8 ["onAbsoluteSizeChanged"]
       29 SETTABLEKS                       R2 R1 K8 ["onAbsoluteSizeChanged"]
       31 GETTABLEKS                       R2 R0 K9 ["onAbsolutePositionChanged"]
       33 SETTABLEKS                       R2 R1 K9 ["onAbsolutePositionChanged"]
       35 GETTABLEKS                       R2 R0 K10 ["testId"]
       37 SETTABLEKS                       R2 R1 K10 ["testId"]
       39 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
