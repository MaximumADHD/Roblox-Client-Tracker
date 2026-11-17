PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K3 [{"tag"}]
        7 NEWTABLE                         R4 4 0
        9 LOADB                            R5 1
       10 SETTABLEKS                       R5 R4 K4 ["col align-x-left size-full-full padding-x-small"]
       12 GETTABLEKS                       R5 R0 K5 ["centered"]
       14 SETTABLEKS                       R5 R4 K6 ["align-y-center"]
       16 GETTABLEKS                       R6 R0 K5 ["centered"]
       18 NOT                              R5 R6
       19 SETTABLEKS                       R5 R4 K7 ["align-y-top padding-y-small"]
       21 SETTABLEKS                       R4 R3 K2 ["tag"]
       23 DUPTABLE                         R4 K9 [{"Text"}]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K11 [{"text"}]
       29 GETTABLEKS                       R8 R0 K10 ["text"]
       31 SETTABLEKS                       R8 R7 K10 ["text"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K8 ["Text"]
       36 CALL                             R1 3 -1
       37 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Components"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["DraftingText"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 GETTABLEKS                       R6 R1 K13 ["memo"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 -1
       38 RETURN                           R6 -1
