PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["ReachStatus"]
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["createElement"]
       11 GETUPVAL                         R3 2
       12 DUPTABLE                         R4 K8 [{"icon", "text", "variant", "shape", "size", "LayoutOrder"}]
       13 DUPTABLE                         R5 K12 [{"name", "position", "iconVariant"}]
       14 GETTABLEKS                       R6 R1 K13 ["iconName"]
       16 SETTABLEKS                       R6 R5 K9 ["name"]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K14 ["Left"]
       21 SETTABLEKS                       R6 R5 K10 ["position"]
       23 GETTABLEKS                       R6 R1 K11 ["iconVariant"]
       25 SETTABLEKS                       R6 R5 K11 ["iconVariant"]
       27 SETTABLEKS                       R5 R4 K2 ["icon"]
       29 GETTABLEKS                       R5 R1 K15 ["label"]
       31 SETTABLEKS                       R5 R4 K3 ["text"]
       33 GETTABLEKS                       R5 R1 K4 ["variant"]
       35 SETTABLEKS                       R5 R4 K4 ["variant"]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K16 ["Pill"]
       40 SETTABLEKS                       R5 R4 K5 ["shape"]
       42 GETUPVAL                         R5 5
       43 GETTABLEKS                       R5 R5 K17 ["Small"]
       45 SETTABLEKS                       R5 R4 K6 ["size"]
       47 GETTABLEKS                       R5 R0 K7 ["LayoutOrder"]
       49 SETTABLEKS                       R5 R4 K7 ["LayoutOrder"]
       51 CALL                             R2 2 -1
       52 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Badge"]
       25 GETTABLEKS                       R4 R2 K12 ["Enums"]
       27 GETTABLEKS                       R4 R4 K13 ["BadgeShape"]
       29 GETTABLEKS                       R5 R2 K12 ["Enums"]
       31 GETTABLEKS                       R5 R5 K14 ["BadgeSize"]
       33 GETTABLEKS                       R6 R2 K12 ["Enums"]
       35 GETTABLEKS                       R6 R6 K15 ["IconPosition"]
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R0 K8 ["Src"]
       41 GETTABLEKS                       R8 R8 K9 ["Util"]
       43 GETTABLEKS                       R8 R8 K16 ["getReachStatusBadgePresentation"]
       45 CALL                             R7 1 1
       46 DUPCLOSURE                       R8 K17 [PROTO_0]
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 RETURN                           R8 1
