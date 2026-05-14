PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Badge"]
       10 DUPTABLE                         R4 K6 [{"text", "variant", "LayoutOrder"}]
       11 LOADK                            R7 K7 ["Label"]
       12 LOADK                            R8 K8 ["LocalServerPlayers"]
       13 DUPTABLE                         R9 K10 [{"count"}]
       14 GETTABLEKS                       R11 R0 K9 ["count"]
       16 FASTCALL1                        TOSTRING R11 ; [+2]
       17 GETIMPORT                        R10 K12 [tostring]
       19 CALL                             R10 1 1
       20 SETTABLEKS                       R10 R9 K9 ["count"]
       22 NAMECALL                         R5 R1 K13 ["getText"]
       24 CALL                             R5 4 1
       25 SETTABLEKS                       R5 R4 K3 ["text"]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K14 ["Neutral"]
       30 SETTABLEKS                       R5 R4 K4 ["variant"]
       32 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       34 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Enums"]
       23 GETTABLEKS                       R3 R3 K10 ["BadgeVariant"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R5 K11 ["Framework"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K13 ["Localization"]
       36 DUPCLOSURE                       R7 K14 [PROTO_0]
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 RETURN                           R7 1
