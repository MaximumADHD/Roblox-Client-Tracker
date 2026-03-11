PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["FoundationDisableStylingPolyfill"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 DUPCLOSURE                       R1 K2 [PROTO_0]
        5 CALL                             R0 1 2
        6 NOT                              R2 R0
        7 JUMPIF                           R2 ; [+1]
        8 NOT                              R2 R1
        9 RETURN                           R2 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K3 ["FoundationDisableStylingPolyfill"]
       13 JUMPIFEQKNIL                     R0 ; [+6]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K3 ["FoundationDisableStylingPolyfill"]
       18 NOT                              R0 R1
       19 RETURN                           R0 1
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R0 R1 K4 ["FoundationStylingPolyfill"]
       23 JUMPIFEQKNIL                     R0 ; [+5]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R0 R1 K4 ["FoundationStylingPolyfill"]
       28 RETURN                           R0 1
       29 LOADB                            R0 0
       30 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K8 ["Utility"]
       16 GETTABLEKS                       R3 R4 K9 ["Flags"]
       18 DUPCLOSURE                       R4 K10 [PROTO_1]
       19 CAPTURE                          VAL R3
       20 RETURN                           R4 1
