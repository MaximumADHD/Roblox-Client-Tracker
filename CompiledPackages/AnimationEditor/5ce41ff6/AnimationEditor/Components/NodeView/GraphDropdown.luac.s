PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectGraphByIdAsync"]
        3 GETUPVAL                         R2 1
        4 FASTCALL1                        TOSTRING R2 ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["graphItems"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R7 R5 K1 ["isDirty"]
       10 JUMPIFNOT                        R7 ; [+5]
       11 GETTABLEKS                       R7 R5 K2 ["text"]
       13 LOADK                            R8 K3 [" *"]
       14 CONCAT                           R6 R7 R8
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R6 R5 K2 ["text"]
       18 DUPTABLE                         R7 K6 [{"id", "text", "isChecked"}]
       19 GETTABLEKS                       R8 R5 K4 ["id"]
       21 SETTABLEKS                       R8 R7 K4 ["id"]
       23 SETTABLEKS                       R6 R7 K2 ["text"]
       25 GETTABLEKS                       R9 R5 K4 ["id"]
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R10 R11 K7 ["selectedGraphId"]
       30 JUMPIFEQ                         R9 R10 ; [+2]
       32 LOADB                            R8 0 +1
       33 LOADB                            R8 1
       34 SETTABLEKS                       R8 R7 K5 ["isChecked"]
       36 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       38 MOVE                             R9 R0
       39 MOVE                             R10 R7
       40 GETIMPORT                        R8 K10 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R1 2 ; [-36]
       45 NEWCLOSURE                       R1 P0
       46 CAPTURE                          UPVAL U0
       47 DUPTABLE                         R2 K13 [{"items", "onItemChanged"}]
       48 SETTABLEKS                       R0 R2 K11 ["items"]
       50 SETTABLEKS                       R1 R2 K12 ["onItemChanged"]
       52 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["useContext"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K5 ["useMemo"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R5 0 3
       22 GETTABLEKS                       R6 R2 K6 ["graphItems"]
       24 GETTABLEKS                       R7 R2 K7 ["selectedGraphId"]
       26 GETTABLEKS                       R8 R2 K8 ["selectGraphByIdAsync"]
       28 SETLIST                          R5 R6 3 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K9 ["createElement"]
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R6 R7 K10 ["Dropdown"]
       37 GETTABLEKS                       R5 R6 K11 ["Root"]
       39 DUPTABLE                         R6 K21 [{"label", "LayoutOrder", "placeholder", "isDisabled", "value", "size", "width", "onItemChanged", "items"}]
       40 LOADK                            R7 K22 [""]
       41 SETTABLEKS                       R7 R6 K12 ["label"]
       43 GETTABLEKS                       R7 R0 K13 ["LayoutOrder"]
       45 SETTABLEKS                       R7 R6 K13 ["LayoutOrder"]
       47 LOADK                            R9 K23 ["Common"]
       48 LOADK                            R10 K24 ["AnimationEditor"]
       49 LOADK                            R11 K25 ["Menu"]
       50 LOADK                            R12 K26 ["NoGraphName"]
       51 NAMECALL                         R7 R1 K27 ["getExternalText"]
       53 CALL                             R7 5 1
       54 SETTABLEKS                       R7 R6 K14 ["placeholder"]
       56 GETIMPORT                        R8 K29 [next]
       58 GETTABLEKS                       R9 R3 K20 ["items"]
       60 CALL                             R8 1 1
       61 JUMPIFEQKNIL                     R8 ; [+2]
       63 LOADB                            R7 0 +1
       64 LOADB                            R7 1
       65 SETTABLEKS                       R7 R6 K15 ["isDisabled"]
       67 GETTABLEKS                       R7 R2 K7 ["selectedGraphId"]
       69 SETTABLEKS                       R7 R6 K16 ["value"]
       71 GETUPVAL                         R10 3
       72 GETTABLEKS                       R9 R10 K30 ["Enums"]
       74 GETTABLEKS                       R8 R9 K31 ["InputSize"]
       76 GETTABLEKS                       R7 R8 K32 ["XSmall"]
       78 SETTABLEKS                       R7 R6 K17 ["size"]
       80 GETIMPORT                        R7 K35 [UDim.new]
       82 LOADN                            R8 0
       83 LOADN                            R9 120
       84 CALL                             R7 2 1
       85 SETTABLEKS                       R7 R6 K18 ["width"]
       87 GETTABLEKS                       R7 R3 K19 ["onItemChanged"]
       89 SETTABLEKS                       R7 R6 K19 ["onItemChanged"]
       91 GETTABLEKS                       R7 R3 K20 ["items"]
       93 SETTABLEKS                       R7 R6 K20 ["items"]
       95 CALL                             R4 2 -1
       96 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["GraphDropdownContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_3]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
