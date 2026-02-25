MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["enumerate"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K7 ["GenerationErrorType"]
       18 NEWTABLE                         R4 0 12
       20 LOADK                            R5 K8 ["None"]
       21 LOADK                            R6 K9 ["Unknown"]
       22 LOADK                            R7 K10 ["CustomMessage"]
       23 LOADK                            R8 K11 ["NoSession"]
       24 LOADK                            R9 K12 ["NoSelectedMaterial"]
       25 LOADK                            R10 K13 ["FailedToGenerateMaps"]
       26 LOADK                            R11 K14 ["TooManyRequests"]
       27 LOADK                            R12 K15 ["ServerError500"]
       28 LOADK                            R13 K16 ["ServerError504"]
       29 LOADK                            R14 K17 ["TextFullyFiltered"]
       30 LOADK                            R15 K18 ["AccountingFailedDecrement"]
       31 LOADK                            R16 K19 ["FailedToSetImage"]
       32 SETLIST                          R4 R5 12 [1]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1
