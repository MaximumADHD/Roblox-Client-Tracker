MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Utility"]
       16 GETTABLEKS                       R2 R3 K9 ["Flags"]
       18 LOADB                            R3 1
       19 SETTABLEKS                       R3 R2 K10 ["FoundationDisableStylingPolyfill"]
       21 RETURN                           R1 1
