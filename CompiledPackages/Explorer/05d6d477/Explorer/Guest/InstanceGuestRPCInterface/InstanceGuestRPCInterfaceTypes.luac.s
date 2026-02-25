MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Fields"]
       16 GETTABLEKS                       R3 R4 K8 ["FieldTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["RpcTypes"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R8 R0 K10 ["Guest"]
       28 GETTABLEKS                       R7 R8 K11 ["InstanceGuestRPCInterface"]
       30 GETTABLEKS                       R6 R7 K12 ["Streaming"]
       32 GETTABLEKS                       R5 R6 K13 ["StreamingInterface"]
       34 CALL                             R4 1 1
       35 LOADNIL                          R5
       36 RETURN                           R5 1
