PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoadingSkeleton3D"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R1 K9 ["Utility"]
       21 GETTABLEKS                       R3 R3 K10 ["getTokens"]
       23 GETTABLEKS                       R4 R1 K11 ["Enums"]
       25 GETTABLEKS                       R4 R4 K12 ["ColorMode"]
       27 GETTABLEKS                       R4 R4 K13 ["Dark"]
       29 GETTABLEKS                       R5 R1 K11 ["Enums"]
       31 GETTABLEKS                       R5 R5 K14 ["Device"]
       33 GETTABLEKS                       R5 R5 K15 ["Desktop"]
       35 CALL                             R3 2 1
       36 DUPTABLE                         R4 K20 [{"pending", "running", "succeeded", "failed"}]
       37 GETTABLEKS                       R5 R3 K21 ["Color"]
       39 GETTABLEKS                       R5 R5 K22 ["System"]
       41 GETTABLEKS                       R5 R5 K23 ["Neutral"]
       43 GETTABLEKS                       R5 R5 K24 ["Color3"]
       45 SETTABLEKS                       R5 R4 K16 ["pending"]
       47 GETTABLEKS                       R5 R3 K21 ["Color"]
       49 GETTABLEKS                       R5 R5 K22 ["System"]
       51 GETTABLEKS                       R5 R5 K25 ["Emphasis"]
       53 GETTABLEKS                       R5 R5 K24 ["Color3"]
       55 SETTABLEKS                       R5 R4 K17 ["running"]
       57 GETTABLEKS                       R5 R3 K21 ["Color"]
       59 GETTABLEKS                       R5 R5 K22 ["System"]
       61 GETTABLEKS                       R5 R5 K26 ["Success"]
       63 GETTABLEKS                       R5 R5 K24 ["Color3"]
       65 SETTABLEKS                       R5 R4 K18 ["succeeded"]
       67 GETTABLEKS                       R5 R3 K21 ["Color"]
       69 GETTABLEKS                       R5 R5 K22 ["System"]
       71 GETTABLEKS                       R5 R5 K27 ["Alert"]
       73 GETTABLEKS                       R5 R5 K24 ["Color3"]
       75 SETTABLEKS                       R5 R4 K19 ["failed"]
       77 DUPTABLE                         R5 K32 [{["pending"] = 0.85, ["running"] = 0.7, ["succeeded"] = 0.75, ["failed"] = 0.6}]
       78 DUPCLOSURE                       R6 K33 [PROTO_0]
       79 CAPTURE                          VAL R4
       80 DUPCLOSURE                       R7 K34 [PROTO_1]
       81 CAPTURE                          VAL R5
       82 DUPTABLE                         R8 K37 [{"colorForStatus", "fillTransparencyForStatus"}]
       83 SETTABLEKS                       R6 R8 K35 ["colorForStatus"]
       85 SETTABLEKS                       R7 R8 K36 ["fillTransparencyForStatus"]
       87 RETURN                           R8 1
