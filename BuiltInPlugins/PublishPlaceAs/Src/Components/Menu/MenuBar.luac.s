PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Selected"]
        8 GETTABLEKS                       R5 R1 K4 ["SelectionChanged"]
       10 GETTABLEKS                       R6 R1 K5 ["Entries"]
       12 FASTCALL1                        TYPE R6 ; [+3]
       13 MOVE                             R10 R6
       14 GETIMPORT                        R9 K7 [type]
       16 CALL                             R9 1 1
       17 JUMPIFEQKS                       R9 K8 ["table"] ; [+2]
       19 LOADB                            R8 0 +1
       20 LOADB                            R8 1
       21 FASTCALL2K                       ASSERT R8 K9 ; [+4]
       23 LOADK                            R9 K9 ["MenuBar.Entries must be a table"]
       24 GETIMPORT                        R7 K11 [assert]
       26 CALL                             R7 2 0
       27 DUPTABLE                         R7 K13 [{"Layout"}]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K14 ["createElement"]
       31 LOADK                            R9 K15 ["UIListLayout"]
       32 DUPTABLE                         R10 K17 [{"Padding"}]
       33 GETIMPORT                        R11 K20 [UDim.new]
       35 LOADN                            R12 0
       36 LOADN                            R13 1
       37 CALL                             R11 2 1
       38 SETTABLEKS                       R11 R10 K16 ["Padding"]
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K12 ["Layout"]
       43 GETIMPORT                        R8 K22 [ipairs]
       45 MOVE                             R9 R6
       46 CALL                             R8 1 3
       47 FORGPREP_INEXT                   R8
       48 MOVE                             R14 R7
       49 GETUPVAL                         R15 0
       50 GETTABLEKS                       R15 R15 K14 ["createElement"]
       52 GETUPVAL                         R16 1
       53 DUPTABLE                         R17 K28 [{["Title"], ["Selected"], ["ShowError"] = False, ["ShowWarning"] = False, ["OnClicked"]}]
       54 LOADK                            R20 K29 ["MenuItem"]
       55 MOVE                             R21 R12
       56 NAMECALL                         R18 R3 K30 ["getText"]
       58 CALL                             R18 3 1
       59 SETTABLEKS                       R18 R17 K23 ["Title"]
       61 JUMPIFEQ                         R4 R11 ; [+2]
       63 LOADB                            R18 0 +1
       64 LOADB                            R18 1
       65 SETTABLEKS                       R18 R17 K3 ["Selected"]
       67 NEWCLOSURE                       R18 P0
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R11
       70 SETTABLEKS                       R18 R17 K27 ["OnClicked"]
       72 CALL                             R15 2 -1
       73 FASTCALL                         TABLE_INSERT ; [+2]
       74 GETIMPORT                        R13 K32 [table.insert]
       76 CALL                             R13 -1 0
       77 FORGLOOP                         R8 2 [inext] ; [-30]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K14 ["createElement"]
       82 LOADK                            R9 K33 ["Frame"]
       83 DUPTABLE                         R10 K38 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
       84 GETIMPORT                        R11 K40 [UDim2.new]
       86 LOADN                            R12 0
       87 GETTABLEKS                       R13 R2 K41 ["MENU_BAR_WIDTH"]
       89 LOADN                            R14 1
       90 LOADN                            R15 0
       91 CALL                             R11 4 1
       92 SETTABLEKS                       R11 R10 K34 ["Size"]
       94 GETTABLEKS                       R11 R2 K42 ["menuBar"]
       96 GETTABLEKS                       R11 R11 K43 ["backgroundColor"]
       98 SETTABLEKS                       R11 R10 K35 ["BackgroundColor3"]
      100 MOVE                             R11 R7
      101 CALL                             R8 3 -1
      102 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K10 ["Src"]
       33 GETTABLEKS                       R6 R6 K11 ["Components"]
       35 GETTABLEKS                       R6 R6 K12 ["Menu"]
       37 GETTABLEKS                       R6 R6 K13 ["MenuEntry"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       42 LOADK                            R8 K15 ["MenuBar"]
       43 NAMECALL                         R6 R6 K16 ["extend"]
       45 CALL                             R6 2 1
       46 DUPCLOSURE                       R7 K17 [PROTO_1]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R7 R6 K18 ["render"]
       51 MOVE                             R7 R4
       52 DUPTABLE                         R8 K21 [{"Stylizer", "Localization"}]
       53 GETTABLEKS                       R9 R3 K19 ["Stylizer"]
       55 SETTABLEKS                       R9 R8 K19 ["Stylizer"]
       57 GETTABLEKS                       R9 R3 K20 ["Localization"]
       59 SETTABLEKS                       R9 R8 K20 ["Localization"]
       61 CALL                             R7 1 1
       62 MOVE                             R8 R6
       63 CALL                             R7 1 1
       64 MOVE                             R6 R7
       65 RETURN                           R6 1
