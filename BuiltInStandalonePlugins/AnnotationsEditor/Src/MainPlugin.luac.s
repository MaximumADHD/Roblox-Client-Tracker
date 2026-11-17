PROTO_0:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K2 ["Studio"]
        5 GETTABLEKS                       R1 R1 K3 ["Theme"]
        7 GETTABLEKS                       R1 R1 K4 ["Name"]
        9 JUMPIFNOTEQKS                    R1 K5 ["Light"] ; [+9]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K6 ["Enums"]
       14 GETTABLEKS                       R0 R0 K7 ["ColorMode"]
       16 GETTABLEKS                       R0 R0 K5 ["Light"]
       18 RETURN                           R0 1
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K6 ["Enums"]
       22 GETTABLEKS                       R0 R0 K7 ["ColorMode"]
       24 GETTABLEKS                       R0 R0 K8 ["Dark"]
       26 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [settings]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R2 R2 K2 ["Studio"]
        6 GETTABLEKS                       R2 R2 K3 ["Theme"]
        8 GETTABLEKS                       R2 R2 K4 ["Name"]
       10 JUMPIFNOTEQKS                    R2 K5 ["Light"] ; [+9]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K6 ["Enums"]
       15 GETTABLEKS                       R1 R1 K7 ["ColorMode"]
       17 GETTABLEKS                       R1 R1 K5 ["Light"]
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K6 ["Enums"]
       23 GETTABLEKS                       R1 R1 K7 ["ColorMode"]
       25 GETTABLEKS                       R1 R1 K8 ["Dark"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["ThemeChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R3 K2 [settings]
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R3 R3 K3 ["Studio"]
        8 GETTABLEKS                       R3 R3 K4 ["Theme"]
       10 GETTABLEKS                       R3 R3 K5 ["Name"]
       12 JUMPIFNOTEQKS                    R3 K6 ["Light"] ; [+9]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K7 ["Enums"]
       17 GETTABLEKS                       R2 R2 K8 ["ColorMode"]
       19 GETTABLEKS                       R2 R2 K6 ["Light"]
       21 JUMP                             ; [+7]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K7 ["Enums"]
       25 GETTABLEKS                       R2 R2 K8 ["ColorMode"]
       27 GETTABLEKS                       R2 R2 K9 ["Dark"]
       29 CALL                             R1 1 2
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K10 ["useEffect"]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U1
       36 NEWTABLE                         R5 0 0
       38 CALL                             R3 2 0
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K11 ["createElement"]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K12 ["FoundationProvider"]
       45 DUPTABLE                         R5 K16 [{"device", "colorMode", "overlayGui"}]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K7 ["Enums"]
       49 GETTABLEKS                       R6 R6 K17 ["Device"]
       51 GETTABLEKS                       R6 R6 K18 ["Desktop"]
       53 SETTABLEKS                       R6 R5 K13 ["device"]
       55 SETTABLEKS                       R1 R5 K14 ["colorMode"]
       57 GETTABLEKS                       R6 R0 K19 ["gui"]
       59 SETTABLEKS                       R6 R5 K15 ["overlayGui"]
       61 DUPTABLE                         R6 K21 [{"AnnotationsApp"}]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K11 ["createElement"]
       65 GETUPVAL                         R8 2
       66 CALL                             R7 1 1
       67 SETTABLEKS                       R7 R6 K20 ["AnnotationsApp"]
       69 CALL                             R3 3 -1
       70 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnnotationsEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Annotations"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["AnnotationsApp"]
       32 DUPCLOSURE                       R5 K12 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 DUPCLOSURE                       R6 K13 [PROTO_4]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R4
       38 RETURN                           R6 1
