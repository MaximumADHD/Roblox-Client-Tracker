PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Icon"]
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K2 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+22]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K4 ["createElement"]
       11 LOADK                            R2 K5 ["ImageLabel"]
       12 NEWTABLE                         R3 4 0
       14 GETTABLEKS                       R4 R0 K0 ["Icon"]
       16 SETTABLEKS                       R4 R3 K6 ["Image"]
       18 GETTABLEKS                       R4 R0 K7 ["LayoutOrder"]
       20 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K8 ["Tag"]
       25 LOADK                            R5 K9 ["VPF-Icon"]
       26 SETTABLE                         R5 R3 R4
       27 CALL                             R1 2 1
       28 RETURN                           R1 1
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K4 ["createElement"]
       32 LOADK                            R2 K10 ["Frame"]
       33 NEWTABLE                         R3 2 0
       35 GETTABLEKS                       R4 R0 K7 ["LayoutOrder"]
       37 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R4 R5 K8 ["Tag"]
       42 GETUPVAL                         R6 1
       43 CALL                             R6 0 1
       44 JUMPIFNOT                        R6 ; [+2]
       45 LOADK                            R5 K11 ["X-Fill VPF-X-Square"]
       46 JUMP                             ; [+1]
       47 LOADK                            R5 K12 ["X-Fill"]
       48 SETTABLE                         R5 R3 R4
       49 DUPTABLE                         R4 K13 [{"Icon"}]
       50 GETTABLEKS                       R5 R0 K0 ["Icon"]
       52 SETTABLEKS                       R5 R4 K0 ["Icon"]
       54 CALL                             R1 3 1
       55 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R5 K10 ["getFFlagViewportToolingFrameworkSplitButtons"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 RETURN                           R4 1
