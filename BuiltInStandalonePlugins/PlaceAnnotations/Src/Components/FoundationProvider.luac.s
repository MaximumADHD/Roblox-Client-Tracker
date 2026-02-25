PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["Fragment"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 LOADNIL                          R2
       15 GETIMPORT                        R3 K9 [game]
       17 LOADK                            R5 K10 ["FoundationDisableStylingPolyfill"]
       18 NAMECALL                         R3 R3 K11 ["GetFastFlag"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+3]
       22 DUPCLOSURE                       R2 K12 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 RETURN                           R2 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R4 R5 K13 ["StudioFoundation"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K14 ["Components"]
       34 GETTABLEKS                       R2 R4 K15 ["FoundationProviderAdapter"]
       36 RETURN                           R2 1
