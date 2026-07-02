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
       22 GETUPVAL                         R6 3
       23 JUMPIFNOT                        R6 ; [+28]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K0 ["createElement"]
       27 GETUPVAL                         R6 4
       28 DUPTABLE                         R7 K13 [{"size", "name", "variant", "style"}]
       29 GETUPVAL                         R8 5
       30 GETTABLEKS                       R8 R8 K14 ["Small"]
       32 SETTABLEKS                       R8 R7 K9 ["size"]
       34 GETTABLEKS                       R8 R0 K10 ["name"]
       36 SETTABLEKS                       R8 R7 K10 ["name"]
       38 GETTABLEKS                       R8 R0 K11 ["variant"]
       40 SETTABLEKS                       R8 R7 K11 ["variant"]
       42 GETTABLEKS                       R8 R1 K15 ["Color"]
       44 GETTABLEKS                       R8 R8 K16 ["Content"]
       46 GETTABLEKS                       R8 R8 K17 ["Emphasis"]
       48 SETTABLEKS                       R8 R7 K12 ["style"]
       50 CALL                             R5 2 1
       51 JUMP                             ; [+18]
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R5 R5 K0 ["createElement"]
       55 GETUPVAL                         R6 6
       56 DUPTABLE                         R7 K21 [{["Image"], ["tag"] = "size-400", ["imageStyle"]}]
       57 GETTABLEKS                       R8 R0 K22 ["icon"]
       59 SETTABLEKS                       R8 R7 K18 ["Image"]
       61 GETTABLEKS                       R8 R1 K15 ["Color"]
       63 GETTABLEKS                       R8 R8 K16 ["Content"]
       65 GETTABLEKS                       R8 R8 K17 ["Emphasis"]
       67 SETTABLEKS                       R8 R7 K20 ["imageStyle"]
       69 CALL                             R5 2 1
       70 CALL                             R2 3 -1
       71 RETURN                           R2 -1

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
        4 DUPTABLE                         R3 K7 [{"onActivated", "key", "isChecked", "icon", "name", "variant"}]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R4 R3 K1 ["onActivated"]
       10 GETTABLEKS                       R4 R0 K8 ["id"]
       12 SETTABLEKS                       R4 R3 K2 ["key"]
       14 GETTABLEKS                       R5 R0 K8 ["id"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K8 ["id"]
       19 JUMPIFEQ                         R5 R6 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K3 ["isChecked"]
       25 GETTABLEKS                       R4 R0 K4 ["icon"]
       27 SETTABLEKS                       R4 R3 K4 ["icon"]
       29 GETTABLEKS                       R4 R0 K5 ["name"]
       31 SETTABLEKS                       R4 R3 K5 ["name"]
       33 GETTABLEKS                       R4 R0 K6 ["variant"]
       35 SETTABLEKS                       R4 R3 K6 ["variant"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

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
       34 GETTABLEKS                       R6 R3 K14 ["Image"]
       36 GETTABLEKS                       R7 R3 K15 ["Enums"]
       38 GETTABLEKS                       R7 R7 K16 ["IconSize"]
       40 GETTABLEKS                       R8 R3 K17 ["Hooks"]
       42 GETTABLEKS                       R8 R8 K18 ["useTokens"]
       44 GETIMPORT                        R9 K5 [require]
       46 GETTABLEKS                       R10 R0 K9 ["Src"]
       48 GETTABLEKS                       R10 R10 K11 ["Foundation"]
       50 GETTABLEKS                       R10 R10 K19 ["Components"]
       52 GETTABLEKS                       R10 R10 K20 ["Frame"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R0 K9 ["Src"]
       59 GETTABLEKS                       R11 R11 K21 ["SharedFlags"]
       61 GETTABLEKS                       R11 R11 K22 ["getFFlagLuaStartPageBuilderIcons"]
       63 CALL                             R10 1 1
       64 CALL                             R10 0 1
       65 DUPCLOSURE                       R11 K23 [PROTO_0]
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 DUPCLOSURE                       R12 K24 [PROTO_3]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R11
       78 RETURN                           R12 1
