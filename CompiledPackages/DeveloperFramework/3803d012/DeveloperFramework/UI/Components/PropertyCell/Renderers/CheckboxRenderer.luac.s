PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Value"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K6 [{"Disabled", "Checked", "OnClick", "Text"}]
        7 GETTABLEKS                       R5 R0 K2 ["Disabled"]
        9 SETTABLEKS                       R5 R4 K2 ["Disabled"]
       11 GETTABLEKS                       R5 R0 K7 ["Value"]
       13 SETTABLEKS                       R5 R4 K3 ["Checked"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R5 R4 K4 ["OnClick"]
       19 GETTABLEKS                       R5 R1 K8 ["Label"]
       21 SETTABLEKS                       R5 R4 K5 ["Text"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K2 ["UI"]
       18 GETTABLEKS                       R2 R2 K8 ["Components"]
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R2 K9 ["Checkbox"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K4 ["Parent"]
       31 GETTABLEKS                       R5 R5 K4 ["Parent"]
       33 GETTABLEKS                       R5 R5 K10 ["Types"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K11 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 RETURN                           R5 1
