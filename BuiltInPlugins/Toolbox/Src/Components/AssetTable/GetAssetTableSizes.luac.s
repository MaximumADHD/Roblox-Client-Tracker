PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ASSET_ROW_COLUMNS"]
        3 NEWTABLE                         R2 8 0
        5 GETTABLEKS                       R3 R1 K1 ["ICON"]
        7 GETIMPORT                        R4 K4 [UDim2.new]
        9 LOADN                            R5 0
       10 GETUPVAL                         R6 1
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 CALL                             R4 4 1
       14 SETTABLE                         R4 R2 R3
       15 GETTABLEKS                       R3 R1 K5 ["NAME"]
       17 GETIMPORT                        R4 K4 [UDim2.new]
       19 LOADK                            R5 K6 [0.4]
       20 GETUPVAL                         R7 1
       21 MINUS                            R6 R7
       22 LOADN                            R7 1
       23 LOADN                            R8 0
       24 CALL                             R4 4 1
       25 SETTABLE                         R4 R2 R3
       26 GETTABLEKS                       R3 R1 K7 ["CREATOR"]
       28 GETIMPORT                        R4 K4 [UDim2.new]
       30 LOADK                            R5 K8 [0.2]
       31 LOADN                            R6 0
       32 LOADN                            R7 1
       33 LOADN                            R8 0
       34 CALL                             R4 4 1
       35 SETTABLE                         R4 R2 R3
       36 GETTABLEKS                       R3 R1 K9 ["DATE_UPDATED"]
       38 GETIMPORT                        R4 K4 [UDim2.new]
       40 LOADK                            R5 K8 [0.2]
       41 LOADN                            R6 0
       42 LOADN                            R7 1
       43 LOADN                            R8 0
       44 CALL                             R4 4 1
       45 SETTABLE                         R4 R2 R3
       46 GETTABLEKS                       R3 R1 K10 ["DATE_CREATED"]
       48 GETIMPORT                        R4 K4 [UDim2.new]
       50 LOADK                            R5 K8 [0.2]
       51 LOADN                            R6 0
       52 LOADN                            R7 1
       53 LOADN                            R8 0
       54 CALL                             R4 4 1
       55 SETTABLE                         R4 R2 R3
       56 LOADN                            R3 104
       57 JUMPIFNOTLT                      R0 R3 ; [+36]
       59 GETTABLEKS                       R3 R1 K5 ["NAME"]
       61 GETIMPORT                        R4 K4 [UDim2.new]
       63 LOADK                            R5 K6 [0.4]
       64 GETUPVAL                         R7 1
       65 MINUS                            R6 R7
       66 LOADN                            R7 1
       67 LOADN                            R8 0
       68 CALL                             R4 4 1
       69 SETTABLE                         R4 R2 R3
       70 GETTABLEKS                       R3 R1 K7 ["CREATOR"]
       72 GETIMPORT                        R4 K4 [UDim2.new]
       74 LOADK                            R5 K11 [0.3]
       75 LOADN                            R6 0
       76 LOADN                            R7 1
       77 LOADN                            R8 0
       78 CALL                             R4 4 1
       79 SETTABLE                         R4 R2 R3
       80 GETTABLEKS                       R3 R1 K9 ["DATE_UPDATED"]
       82 GETIMPORT                        R4 K4 [UDim2.new]
       84 LOADK                            R5 K11 [0.3]
       85 LOADN                            R6 0
       86 LOADN                            R7 1
       87 LOADN                            R8 0
       88 CALL                             R4 4 1
       89 SETTABLE                         R4 R2 R3
       90 GETTABLEKS                       R3 R1 K10 ["DATE_CREATED"]
       92 LOADNIL                          R4
       93 SETTABLE                         R4 R2 R3
       94 MOVE                             R3 R2
       95 LOADN                            R4 104
       96 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Constants"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R7 R0 K4 ["Src"]
       20 GETTABLEKS                       R6 R7 K5 ["Util"]
       22 GETTABLEKS                       R5 R6 K9 ["SharedFlags"]
       24 GETTABLEKS                       R4 R5 K10 ["getFFlagToolboxEnableAssetRows"]
       26 CALL                             R3 1 1
       27 MOVE                             R5 R3
       28 CALL                             R5 0 1
       29 JUMPIFNOT                        R5 ; [+5]
       30 GETTABLEKS                       R5 R2 K11 ["ITEM_ROW"]
       32 GETTABLEKS                       R4 R5 K12 ["LEFT_RIGHT_PADDING"]
       34 JUMP                             ; [+1]
       35 LOADN                            R4 0
       36 MOVE                             R6 R3
       37 CALL                             R6 0 1
       38 JUMPIFNOT                        R6 ; [+11]
       39 GETTABLEKS                       R7 R2 K13 ["ASSET_ROW"]
       41 GETTABLEKS                       R6 R7 K14 ["ICON_SIZE"]
       43 GETTABLEKS                       R9 R2 K13 ["ASSET_ROW"]
       45 GETTABLEKS                       R8 R9 K15 ["LEFT_MOST_PADDING"]
       47 ADD                              R7 R4 R8
       48 ADD                              R5 R6 R7
       49 JUMP                             ; [+1]
       50 LOADN                            R5 0
       51 DUPCLOSURE                       R6 K16 [PROTO_0]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 RETURN                           R6 1
