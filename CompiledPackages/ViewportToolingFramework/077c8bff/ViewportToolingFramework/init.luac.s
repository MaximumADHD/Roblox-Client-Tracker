MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ViewportToolingFrameworkRemoveTypes"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 GETIMPORT                        R1 K5 [require]
       10 GETIMPORT                        R3 K7 [script]
       12 GETTABLEKS                       R2 R3 K8 ["Types"]
       14 CALL                             R1 1 1
       15 DUPTABLE                         R2 K11 [{"SharedFlags", "Toolbar", "Types"}]
       16 GETIMPORT                        R3 K5 [require]
       18 GETIMPORT                        R5 K7 [script]
       20 GETTABLEKS                       R4 R5 K9 ["SharedFlags"]
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K9 ["SharedFlags"]
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R6 K7 [script]
       29 GETTABLEKS                       R5 R6 K12 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["Toolbar"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K10 ["Toolbar"]
       36 JUMPIFNOT                        R0 ; [+2]
       37 LOADNIL                          R3
       38 JUMP                             ; [+1]
       39 MOVE                             R3 R1
       40 SETTABLEKS                       R3 R2 K8 ["Types"]
       42 RETURN                           R2 1
