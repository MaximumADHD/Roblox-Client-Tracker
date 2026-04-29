MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Flags"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K8 [string.split]
       12 GETTABLEKS                       R3 R1 K9 ["FoundationImagesWhitelistedIconAssets"]
       14 LOADK                            R4 K10 [","]
       15 CALL                             R2 2 1
       16 NEWTABLE                         R3 0 0
       18 MOVE                             R4 R2
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 LOADB                            R9 1
       23 SETTABLE                         R9 R3 R8
       24 FORGLOOP                         R4 2 ; [-3]
       26 RETURN                           R3 1
