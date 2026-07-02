PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Folder"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["Design"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 LOADK                            R2 K6 ["StyleSheet"]
        9 NEWTABLE                         R3 0 7
       11 GETUPVAL                         R4 1
       12 LOADK                            R5 K7 ["Frame"]
       13 DUPTABLE                         R6 K10 [{["StyleRule_Priority"] = 7}]
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 1
       16 LOADK                            R6 K11 ["ScrollingFrame"]
       17 DUPTABLE                         R7 K13 [{["StyleRule_Priority"] = 6}]
       18 CALL                             R5 2 1
       19 GETUPVAL                         R6 1
       20 LOADK                            R7 K14 ["TextLabel"]
       21 DUPTABLE                         R8 K16 [{["StyleRule_Priority"] = 5}]
       22 CALL                             R6 2 1
       23 GETUPVAL                         R7 1
       24 LOADK                            R8 K17 ["TextButton"]
       25 DUPTABLE                         R9 K19 [{["StyleRule_Priority"] = 4}]
       26 CALL                             R7 2 1
       27 GETUPVAL                         R8 1
       28 LOADK                            R9 K20 ["TextBox"]
       29 DUPTABLE                         R10 K22 [{["StyleRule_Priority"] = 3}]
       30 CALL                             R8 2 1
       31 GETUPVAL                         R9 1
       32 LOADK                            R10 K23 ["ImageButton"]
       33 DUPTABLE                         R11 K25 [{["StyleRule_Priority"] = 2}]
       34 CALL                             R9 2 1
       35 GETUPVAL                         R10 1
       36 LOADK                            R11 K26 ["ImageLabel"]
       37 DUPTABLE                         R12 K28 [{["StyleRule_Priority"] = 1}]
       38 CALL                             R10 2 -1
       39 SETLIST                          R3 R4 -1 [1]
       41 CALL                             R1 2 1
       42 SETTABLEKS                       R0 R1 K29 ["Parent"]
       44 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Styling"]
       18 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       20 GETTABLEKS                       R3 R1 K7 ["Styling"]
       22 GETTABLEKS                       R3 R3 K9 ["createStyleSheet"]
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 RETURN                           R4 1
