MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["NavigationSymbol"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 LOADK                            R2 K6 ["WILL_FOCUS"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R0
       14 LOADK                            R3 K7 ["DID_FOCUS"]
       15 CALL                             R2 1 1
       16 MOVE                             R3 R0
       17 LOADK                            R4 K8 ["WILL_BLUR"]
       18 CALL                             R3 1 1
       19 MOVE                             R4 R0
       20 LOADK                            R5 K9 ["DID_BLUR"]
       21 CALL                             R4 1 1
       22 MOVE                             R5 R0
       23 LOADK                            R6 K10 ["ACTION"]
       24 CALL                             R5 1 1
       25 MOVE                             R6 R0
       26 LOADK                            R7 K11 ["REFOCUS"]
       27 CALL                             R6 1 1
       28 DUPTABLE                         R7 K18 [{"WillFocus", "DidFocus", "WillBlur", "DidBlur", "Action", "Refocus"}]
       29 SETTABLEKS                       R1 R7 K12 ["WillFocus"]
       31 SETTABLEKS                       R2 R7 K13 ["DidFocus"]
       33 SETTABLEKS                       R3 R7 K14 ["WillBlur"]
       35 SETTABLEKS                       R4 R7 K15 ["DidBlur"]
       37 SETTABLEKS                       R5 R7 K16 ["Action"]
       39 SETTABLEKS                       R6 R7 K17 ["Refocus"]
       41 RETURN                           R7 1
