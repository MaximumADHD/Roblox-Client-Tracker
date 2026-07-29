PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["React"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K1 [require]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["Packages"]
       13 GETTABLEKS                       R3 R3 K4 ["ReactRoblox"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K1 [require]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K5 ["Src"]
       21 GETTABLEKS                       R4 R4 K6 ["MainPlugin"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K1 [require]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["Src"]
       29 GETTABLEKS                       R5 R5 K7 ["Flags"]
       31 GETTABLEKS                       R5 R5 K8 ["getFFlagStudioDialogFoundationDesignBinding"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K11 [Instance.new]
       36 LOADK                            R6 K12 ["Frame"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R1 K13 ["createElement"]
       40 MOVE                             R7 R3
       41 DUPTABLE                         R8 K16 [{"plugin", "rootHandle"}]
       42 SETTABLEKS                       R0 R8 K14 ["plugin"]
       44 MOVE                             R10 R4
       45 CALL                             R10 0 1
       46 JUMPIFNOT                        R10 ; [+2]
       47 MOVE                             R9 R5
       48 JUMP                             ; [+1]
       49 LOADNIL                          R9
       50 SETTABLEKS                       R9 R8 K15 ["rootHandle"]
       52 CALL                             R6 2 1
       53 GETTABLEKS                       R7 R2 K17 ["createRoot"]
       55 MOVE                             R8 R5
       56 CALL                             R7 1 1
       57 MOVE                             R10 R6
       58 NAMECALL                         R8 R7 K18 ["render"]
       60 CALL                             R8 2 0
       61 GETTABLEKS                       R8 R0 K19 ["Unloading"]
       63 NEWCLOSURE                       R10 P0
       64 CAPTURE                          VAL R7
       65 NAMECALL                         R8 R8 K20 ["Once"]
       67 CALL                             R8 2 0
       68 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
