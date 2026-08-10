MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DevFrameworkUseInternalReact"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 GETIMPORT                        R1 K5 [script]
       10 GETTABLEKS                       R1 R1 K6 ["Parent"]
       12 GETTABLEKS                       R1 R1 K6 ["Parent"]
       14 GETTABLEKS                       R2 R1 K6 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["Parent"]
       20 LOADK                            R4 K7 ["React"]
       21 NAMECALL                         R2 R2 K8 ["FindFirstChild"]
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+10]
       25 LOADK                            R5 K9 ["ModuleScript"]
       26 NAMECALL                         R3 R2 K10 ["IsA"]
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+5]
       30 GETIMPORT                        R3 K12 [require]
       32 MOVE                             R4 R2
       33 CALL                             R3 1 -1
       34 RETURN                           R3 -1
       35 JUMPIFNOT                        R0 ; [+13]
       36 GETIMPORT                        R3 K14 [_G]
       38 GETTABLEKS                       R3 R3 K15 ["__DEV_FRAMEWORK_USE_INTERNAL_REACT__"]
       40 JUMPIFNOT                        R3 ; [+8]
       41 GETIMPORT                        R3 K12 [require]
       43 GETTABLEKS                       R4 R1 K6 ["Parent"]
       45 GETTABLEKS                       R4 R4 K7 ["React"]
       47 CALL                             R3 1 -1
       48 RETURN                           R3 -1
       49 LOADK                            R3 K16 [""]
       50 RETURN                           R3 1
