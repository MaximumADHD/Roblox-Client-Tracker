MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K6 [pairs]
       12 GETIMPORT                        R3 K3 [script]
       14 NAMECALL                         R3 R3 K7 ["GetChildren"]
       16 CALL                             R3 1 -1
       17 CALL                             R2 -1 3
       18 FORGPREP_NEXT                    R2
       19 GETTABLEKS                       R7 R6 K8 ["ClassName"]
       21 JUMPIFNOTEQKS                    R7 K9 ["ModuleScript"] ; [+8]
       23 GETTABLEKS                       R7 R6 K10 ["Name"]
       25 GETIMPORT                        R8 K1 [require]
       27 MOVE                             R9 R6
       28 CALL                             R8 1 1
       29 SETTABLE                         R8 R0 R7
       30 FORGLOOP                         R2 2 ; [-12]
       32 GETTABLEKS                       R2 R0 K11 ["freeze"]
       34 LOADK                            R3 K12 ["Dash"]
       35 MOVE                             R4 R0
       36 LOADB                            R5 1
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1
