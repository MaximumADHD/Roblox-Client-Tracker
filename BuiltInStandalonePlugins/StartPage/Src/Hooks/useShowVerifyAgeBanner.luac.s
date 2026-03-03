PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        ASSERT R1 ; [+2]
        2 GETIMPORT                        R0 K1 [assert]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K2 ["useContext"]
        8 CALL                             R0 0 1
        9 GETUPVAL                         R1 2
       10 JUMPIFNOT                        R1 ; [+19]
       11 NEWTABLE                         R1 0 7
       13 GETTABLEKS                       R2 R0 K3 ["showVerifyAgeBanner"]
       15 GETTABLEKS                       R3 R0 K4 ["showEstablishTrustBanner"]
       17 GETTABLEKS                       R4 R0 K5 ["shouldShowEstablishTrustDialog"]
       19 GETTABLEKS                       R5 R0 K6 ["showAgeReverificationBanner"]
       21 GETTABLEKS                       R6 R0 K7 ["onClose"]
       23 GETTABLEKS                       R7 R0 K8 ["onTrustBannerClose"]
       25 GETTABLEKS                       R8 R0 K9 ["onAgeReverificationBannerClose"]
       27 SETLIST                          R1 R2 7 [1]
       29 RETURN                           R1 1
       30 NEWTABLE                         R1 0 4
       32 GETTABLEKS                       R2 R0 K3 ["showVerifyAgeBanner"]
       34 GETTABLEKS                       R3 R0 K6 ["showAgeReverificationBanner"]
       36 GETTABLEKS                       R4 R0 K7 ["onClose"]
       38 GETTABLEKS                       R5 R0 K9 ["onAgeReverificationBannerClose"]
       40 SETLIST                          R1 R2 4 [1]
       42 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["SafetyFAEUpsellContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["SharedFlags"]
       22 GETTABLEKS                       R3 R4 K10 ["getFFlagLuaStartPageVerifyAgeBanner"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K9 ["SharedFlags"]
       31 GETTABLEKS                       R4 R5 K11 ["getFFlagStartPageEstablishTrustBanner"]
       33 CALL                             R3 1 1
       34 CALL                             R3 0 1
       35 DUPCLOSURE                       R4 K12 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 RETURN                           R4 1
