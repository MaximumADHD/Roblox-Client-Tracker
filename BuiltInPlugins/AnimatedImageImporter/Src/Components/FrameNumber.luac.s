PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K6 [{["tag"] = "auto-x size-0-400 padding-x-xsmall bg-surface-0 radius-small", ["ZIndex"] = 10}]
        7 DUPTABLE                         R4 K8 [{"Text"}]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K0 ["createElement"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K7 ["Text"]
       14 DUPTABLE                         R7 K12 [{["Text"], ["testId"] = "FrameNumber", ["tag"] = "text-label-small content-emphasis auto-x size-0-full"}]
       15 GETTABLEKS                       R9 R0 K13 ["frameNumber"]
       17 FASTCALL1                        TOSTRING R9 ; [+2]
       18 GETIMPORT                        R8 K15 [tostring]
       20 CALL                             R8 1 1
       21 SETTABLEKS                       R8 R7 K7 ["Text"]
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K7 ["Text"]
       26 CALL                             R1 3 -1
       27 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
