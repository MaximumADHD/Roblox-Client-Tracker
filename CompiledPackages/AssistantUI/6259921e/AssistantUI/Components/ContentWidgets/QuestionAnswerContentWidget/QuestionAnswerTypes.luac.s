MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 1 0
       14 DUPTABLE                         R3 K11 [{"Preparing", "AwaitingAnswers", "Completed", "Error"}]
       15 LOADK                            R4 K12 ["preparing"]
       16 SETTABLEKS                       R4 R3 K7 ["Preparing"]
       18 LOADK                            R4 K13 ["awaiting_answers"]
       19 SETTABLEKS                       R4 R3 K8 ["AwaitingAnswers"]
       21 LOADK                            R4 K14 ["completed"]
       22 SETTABLEKS                       R4 R3 K9 ["Completed"]
       24 LOADK                            R4 K15 ["error"]
       25 SETTABLEKS                       R4 R3 K10 ["Error"]
       27 SETTABLEKS                       R3 R2 K16 ["Status"]
       29 RETURN                           R2 1
