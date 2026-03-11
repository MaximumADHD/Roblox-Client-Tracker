MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K7 [{"Context", "StandardProvider", "StandaloneDataModelProvider"}]
        8 GETIMPORT                        R2 K9 [require]
       10 GETIMPORT                        R4 K11 [script]
       12 GETTABLEKS                       R3 R4 K4 ["Context"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K4 ["Context"]
       17 GETIMPORT                        R2 K9 [require]
       19 GETIMPORT                        R4 K11 [script]
       21 GETTABLEKS                       R3 R4 K5 ["StandardProvider"]
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K5 ["StandardProvider"]
       26 NAMECALL                         R3 R0 K12 ["IsStudio"]
       28 CALL                             R3 1 1
       29 JUMPIFNOT                        R3 ; [+8]
       30 GETIMPORT                        R2 K9 [require]
       32 GETIMPORT                        R4 K11 [script]
       34 GETTABLEKS                       R3 R4 K6 ["StandaloneDataModelProvider"]
       36 CALL                             R2 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R2
       39 SETTABLEKS                       R2 R1 K6 ["StandaloneDataModelProvider"]
       41 RETURN                           R1 1
