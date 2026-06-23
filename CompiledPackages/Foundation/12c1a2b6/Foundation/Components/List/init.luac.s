MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["List"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["Item"]
       14 GETTABLEKS                       R2 R2 K6 ["ListAccessory"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K1 [require]
       19 GETIMPORT                        R3 K3 [script]
       21 GETTABLEKS                       R3 R3 K5 ["Item"]
       23 CALL                             R2 1 1
       24 DUPTABLE                         R3 K8 [{"Root", "Item"}]
       25 SETTABLEKS                       R0 R3 K7 ["Root"]
       27 SETTABLEKS                       R2 R3 K5 ["Item"]
       29 RETURN                           R3 1
