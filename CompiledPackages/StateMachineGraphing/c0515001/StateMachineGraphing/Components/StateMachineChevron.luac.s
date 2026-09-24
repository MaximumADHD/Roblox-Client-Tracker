PROTO_0:
        0 DUPTABLE                         R3 K3 [{"Scale", "Layout", "Icon"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K4 ["createElement"]
        4 LOADK                            R5 K5 ["UIScale"]
        5 DUPTABLE                         R6 K6 [{"Scale"}]
        6 SETTABLEKS                       R0 R6 K0 ["Scale"]
        8 CALL                             R4 2 1
        9 SETTABLEKS                       R4 R3 K0 ["Scale"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["createElement"]
       14 LOADK                            R5 K7 ["UIListLayout"]
       15 DUPTABLE                         R6 K10 [{"HorizontalAlignment", "VerticalAlignment"}]
       16 GETIMPORT                        R7 K13 [Enum.HorizontalAlignment.Center]
       18 SETTABLEKS                       R7 R6 K8 ["HorizontalAlignment"]
       20 GETIMPORT                        R7 K14 [Enum.VerticalAlignment.Center]
       22 SETTABLEKS                       R7 R6 K9 ["VerticalAlignment"]
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R3 K1 ["Layout"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K4 ["createElement"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K2 ["Icon"]
       33 DUPTABLE                         R6 K20 [{["name"] = "caret-small-right", ["size"], ["variant"], ["style"]}]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K21 ["Enums"]
       37 GETTABLEKS                       R7 R7 K22 ["IconSize"]
       39 GETTABLEKS                       R7 R7 K23 ["Large"]
       41 SETTABLEKS                       R7 R6 K17 ["size"]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K21 ["Enums"]
       46 GETTABLEKS                       R7 R7 K24 ["IconVariant"]
       48 GETTABLEKS                       R7 R7 K25 ["Filled"]
       50 SETTABLEKS                       R7 R6 K18 ["variant"]
       52 DUPTABLE                         R7 K28 [{"Color3", "Transparency"}]
       53 SETTABLEKS                       R1 R7 K26 ["Color3"]
       55 SETTABLEKS                       R2 R7 K27 ["Transparency"]
       57 SETTABLEKS                       R7 R6 K19 ["style"]
       59 CALL                             R4 2 1
       60 SETTABLEKS                       R4 R3 K2 ["Icon"]
       62 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 4 0
       23 LOADN                            R4 28
       24 SETTABLEKS                       R4 R3 K9 ["SIZE"]
       26 LOADK                            R4 K10 [1.8]
       27 SETTABLEKS                       R4 R3 K11 ["SCALE"]
       29 DUPCLOSURE                       R4 K12 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R4 R3 K13 ["children"]
       34 RETURN                           R3 1
