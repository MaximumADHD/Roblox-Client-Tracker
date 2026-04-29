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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADN                            R3 1
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R6 0 0
       17 CALL                             R4 2 0
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K2 ["createElement"]
       21 GETUPVAL                         R5 1
       22 DUPTABLE                         R6 K7 [{"Style", "Text", "Size", "OnClick"}]
       23 LOADK                            R7 K8 ["Round"]
       24 SETTABLEKS                       R7 R6 K3 ["Style"]
       26 LOADK                            R7 K9 ["Open Dialog"]
       27 SETTABLEKS                       R7 R6 K4 ["Text"]
       29 GETIMPORT                        R7 K12 [UDim2.fromOffset]
       31 LOADN                            R8 120
       32 LOADN                            R9 32
       33 CALL                             R7 2 1
       34 SETTABLEKS                       R7 R6 K5 ["Size"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R7 R6 K6 ["OnClick"]
       40 DUPTABLE                         R7 K14 [{"Dialog"}]
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R8 R9 K2 ["createElement"]
       44 GETUPVAL                         R9 2
       45 DUPTABLE                         R10 K19 [{"Title", "Enabled", "Size", "OnClose", "Modal"}]
       46 LOADK                            R11 K20 ["Resizing Dialog"]
       47 SETTABLEKS                       R11 R10 K15 ["Title"]
       49 SETTABLEKS                       R0 R10 K16 ["Enabled"]
       51 GETIMPORT                        R11 K23 [Vector2.new]
       53 LOADN                            R12 44
       54 MULK                             R13 R2 K24 [100]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K5 ["Size"]
       58 NEWCLOSURE                       R11 P2
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R11 R10 K17 ["OnClose"]
       62 LOADB                            R11 1
       63 SETTABLEKS                       R11 R10 K18 ["Modal"]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K13 ["Dialog"]
       68 CALL                             R4 3 -1
       69 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["DEPRECATED_Button"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["Dialog"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K11 [PROTO_6]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 SETGLOBAL                        R4 K12 ["ResizingDialog"]
       40 GETGLOBAL                        R4 K12 ["ResizingDialog"]
       42 RETURN                           R4 1
