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
       13 DUPTABLE                         R6 K9 [{"StyleRule_Priority"}]
       14 LOADN                            R7 7
       15 SETTABLEKS                       R7 R6 K8 ["StyleRule_Priority"]
       17 CALL                             R4 2 1
       18 GETUPVAL                         R5 1
       19 LOADK                            R6 K10 ["ScrollingFrame"]
       20 DUPTABLE                         R7 K9 [{"StyleRule_Priority"}]
       21 LOADN                            R8 6
       22 SETTABLEKS                       R8 R7 K8 ["StyleRule_Priority"]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 1
       26 LOADK                            R7 K11 ["TextLabel"]
       27 DUPTABLE                         R8 K9 [{"StyleRule_Priority"}]
       28 LOADN                            R9 5
       29 SETTABLEKS                       R9 R8 K8 ["StyleRule_Priority"]
       31 CALL                             R6 2 1
       32 GETUPVAL                         R7 1
       33 LOADK                            R8 K12 ["TextButton"]
       34 DUPTABLE                         R9 K9 [{"StyleRule_Priority"}]
       35 LOADN                            R10 4
       36 SETTABLEKS                       R10 R9 K8 ["StyleRule_Priority"]
       38 CALL                             R7 2 1
       39 GETUPVAL                         R8 1
       40 LOADK                            R9 K13 ["TextBox"]
       41 DUPTABLE                         R10 K9 [{"StyleRule_Priority"}]
       42 LOADN                            R11 3
       43 SETTABLEKS                       R11 R10 K8 ["StyleRule_Priority"]
       45 CALL                             R8 2 1
       46 GETUPVAL                         R9 1
       47 LOADK                            R10 K14 ["ImageButton"]
       48 DUPTABLE                         R11 K9 [{"StyleRule_Priority"}]
       49 LOADN                            R12 2
       50 SETTABLEKS                       R12 R11 K8 ["StyleRule_Priority"]
       52 CALL                             R9 2 1
       53 GETUPVAL                         R10 1
       54 LOADK                            R11 K15 ["ImageLabel"]
       55 DUPTABLE                         R12 K9 [{"StyleRule_Priority"}]
       56 LOADN                            R13 1
       57 SETTABLEKS                       R13 R12 K8 ["StyleRule_Priority"]
       59 CALL                             R10 2 -1
       60 SETLIST                          R3 R4 -1 [1]
       62 CALL                             R1 2 1
       63 SETTABLEKS                       R0 R1 K16 ["Parent"]
       65 RETURN                           R0 1

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
