PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Key"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["onTabSelected"]
        8 GETUPVAL                         R1 3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Key"]
        2 GETUPVAL                         R4 0
        3 JUMPIFEQ                         R3 R4 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K9 [{"LayoutOrder", "onActivated", "isChecked", "onStateChanged", "text", "key", "testId"}]
       12 SETTABLEKS                       R1 R5 K2 ["LayoutOrder"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R6 R5 K3 ["onActivated"]
       21 SETTABLEKS                       R2 R5 K4 ["isChecked"]
       23 GETUPVAL                         R6 5
       24 SETTABLEKS                       R6 R5 K5 ["onStateChanged"]
       26 GETTABLEKS                       R6 R0 K10 ["Label"]
       28 JUMPIF                           R6 ; [+2]
       29 GETTABLEKS                       R6 R0 K11 ["Title"]
       31 SETTABLEKS                       R6 R5 K6 ["text"]
       33 GETTABLEKS                       R6 R0 K0 ["Key"]
       35 SETTABLEKS                       R6 R5 K7 ["key"]
       37 JUMPIFNOT                        R2 ; [+2]
       38 LOADK                            R6 K12 ["--start-page-PillTabs-Tab-active"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R6
       41 SETTABLEKS                       R6 R5 K8 ["testId"]
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["defaultSelectedTab"]
        3 JUMPIF                           R2 ; [+5]
        4 GETTABLEKS                       R3 R0 K1 ["tabs"]
        6 GETTABLEN                        R2 R3 1
        7 GETTABLEKS                       R2 R2 K2 ["Key"]
        9 CALL                             R1 1 2
       10 GETUPVAL                         R3 1
       11 LOADK                            R4 K3 ["PointingHand"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K4 ["createElement"]
       16 GETUPVAL                         R5 3
       17 DUPTABLE                         R6 K7 [{"LayoutOrder", "tag"}]
       18 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       20 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       22 LOADK                            R7 K8 ["auto-xy row gap-medium"]
       23 SETTABLEKS                       R7 R6 K6 ["tag"]
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K9 ["map"]
       28 GETTABLEKS                       R8 R0 K1 ["tabs"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 CALL                             R7 2 -1
       38 CALL                             R4 -1 -1
       39 RETURN                           R4 -1

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
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K13 ["useOnStateChangedCursor"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["useState"]
       41 GETTABLEKS                       R6 R3 K15 ["Chip"]
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K9 ["Src"]
       47 GETTABLEKS                       R8 R8 K11 ["Foundation"]
       49 GETTABLEKS                       R8 R8 K16 ["Components"]
       51 GETTABLEKS                       R8 R8 K17 ["Frame"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K9 ["Src"]
       58 GETTABLEKS                       R9 R9 K18 ["Types"]
       60 CALL                             R8 1 1
       61 DUPCLOSURE                       R9 K19 [PROTO_2]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R6
       68 RETURN                           R9 1
