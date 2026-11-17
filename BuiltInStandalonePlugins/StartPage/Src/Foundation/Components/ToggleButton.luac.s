PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K5 [{["onActivated"], ["tag"], ["testId"] = "--start-page--toggle-button-item"}]
        7 GETTABLEKS                       R5 R0 K1 ["onActivated"]
        9 SETTABLEKS                       R5 R4 K1 ["onActivated"]
       11 NEWTABLE                         R5 2 0
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K6 ["row align-x-center align-y-center size-800 auto-xy radius-medium"]
       16 GETTABLEKS                       R6 R0 K7 ["isChecked"]
       18 SETTABLEKS                       R6 R5 K8 ["bg-shift-300"]
       20 SETTABLEKS                       R5 R4 K2 ["tag"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K0 ["createElement"]
       25 GETUPVAL                         R6 3
       26 DUPTABLE                         R7 K13 [{"size", "name", "variant", "style"}]
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R8 R8 K14 ["Small"]
       30 SETTABLEKS                       R8 R7 K9 ["size"]
       32 GETTABLEKS                       R8 R0 K10 ["name"]
       34 SETTABLEKS                       R8 R7 K10 ["name"]
       36 GETTABLEKS                       R8 R0 K11 ["variant"]
       38 SETTABLEKS                       R8 R7 K11 ["variant"]
       40 GETTABLEKS                       R8 R1 K15 ["Color"]
       42 GETTABLEKS                       R8 R8 K16 ["Content"]
       44 GETTABLEKS                       R8 R8 K17 ["Emphasis"]
       46 SETTABLEKS                       R8 R7 K12 ["style"]
       48 CALL                             R5 2 -1
       49 CALL                             R2 -1 -1
       50 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"onActivated", "key", "isChecked", "name", "variant"}]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R4 R3 K1 ["onActivated"]
       10 GETTABLEKS                       R4 R0 K7 ["id"]
       12 SETTABLEKS                       R4 R3 K2 ["key"]
       14 GETTABLEKS                       R5 R0 K7 ["id"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K7 ["id"]
       19 JUMPIFEQ                         R5 R6 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K3 ["isChecked"]
       25 GETTABLEKS                       R4 R0 K4 ["name"]
       27 SETTABLEKS                       R4 R3 K4 ["name"]
       29 GETTABLEKS                       R4 R0 K5 ["variant"]
       31 SETTABLEKS                       R4 R3 K5 ["variant"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["tag"] = "row gap-xsmall auto-xy", ["LayoutOrder"]}]
        5 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K5 ["map"]
       12 GETTABLEKS                       R5 R0 K6 ["options"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 CALL                             R4 2 -1
       19 CALL                             R1 -1 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["Icon"]
       32 GETTABLEKS                       R5 R3 K13 ["View"]
       34 GETTABLEKS                       R6 R3 K14 ["Enums"]
       36 GETTABLEKS                       R6 R6 K15 ["IconSize"]
       38 GETTABLEKS                       R7 R3 K16 ["Hooks"]
       40 GETTABLEKS                       R7 R7 K17 ["useTokens"]
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R0 K9 ["Src"]
       46 GETTABLEKS                       R9 R9 K11 ["Foundation"]
       48 GETTABLEKS                       R9 R9 K18 ["Components"]
       50 GETTABLEKS                       R9 R9 K19 ["Frame"]
       52 CALL                             R8 1 1
       53 DUPCLOSURE                       R9 K20 [PROTO_0]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 DUPCLOSURE                       R10 K21 [PROTO_3]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R9
       64 RETURN                           R10 1
