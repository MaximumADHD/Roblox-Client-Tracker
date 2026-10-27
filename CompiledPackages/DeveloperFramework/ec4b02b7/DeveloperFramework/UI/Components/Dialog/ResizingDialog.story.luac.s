PROTO_0:
        0 MODK                             R2 R0 K1 [3]
        1 ADDK                             R1 R2 K0 [1]
        2 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADK                            R1 K3 [0.25]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 DUPCLOSURE                       R1 K4 [PROTO_0]
        6 CALL                             R0 1 0
        7 JUMPBACK                         ; [-8]
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 1
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADN                            R3 1
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R6 0 0
       17 CALL                             R4 2 0
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K2 ["createElement"]
       21 GETUPVAL                         R5 1
       22 DUPTABLE                         R6 K9 [{["Style"] = "Round", ["Text"] = "Open Dialog", ["Size"], ["OnClick"]}]
       23 GETIMPORT                        R7 K12 [UDim2.fromOffset]
       25 LOADN                            R8 120
       26 LOADN                            R9 32
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K7 ["Size"]
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R7 R6 K8 ["OnClick"]
       34 DUPTABLE                         R7 K14 [{"Dialog"}]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K2 ["createElement"]
       38 GETUPVAL                         R9 2
       39 DUPTABLE                         R10 K21 [{["Title"] = "Resizing Dialog", ["Enabled"], ["Size"], ["OnClose"], ["Modal"] = True}]
       40 SETTABLEKS                       R0 R10 K17 ["Enabled"]
       42 GETIMPORT                        R11 K24 [Vector2.new]
       44 LOADN                            R12 300
       45 MULK                             R13 R2 K25 [100]
       46 CALL                             R11 2 1
       47 SETTABLEKS                       R11 R10 K7 ["Size"]
       49 NEWCLOSURE                       R11 P2
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R11 R10 K18 ["OnClose"]
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K13 ["Dialog"]
       56 CALL                             R4 3 -1
       57 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["DEPRECATED_Button"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Dialog"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K11 [PROTO_6]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 SETGLOBAL                        R4 K12 ["ResizingDialog"]
       40 GETGLOBAL                        R4 K12 ["ResizingDialog"]
       42 RETURN                           R4 1
