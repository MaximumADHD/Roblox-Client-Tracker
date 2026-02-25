PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["log"]
        3 LOADK                            R2 K1 ["Inserting node of type {}"]
        4 GETUPVAL                         R4 1
        5 FASTCALL1                        TOSTRING R4 ; [+2]
        6 GETIMPORT                        R3 K3 [tostring]
        8 CALL                             R3 1 1
        9 NAMECALL                         R0 R0 K4 ["info"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K5 ["visibleMenuState"]
       15 JUMPIFNOTEQKNIL                  R0 ; [+6]
       17 GETIMPORT                        R0 K7 [warn]
       19 LOADK                            R1 K8 ["No insertNodeContext.visibleMenuState"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 1
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R1 R2 K9 ["PARAMETER_NODE_CLASSNAME"]
       26 JUMPIFNOTEQ                      R0 R1 ; [+26]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R3 R4 K5 ["visibleMenuState"]
       31 GETTABLEKS                       R2 R3 K10 ["sourcePinInfo"]
       33 JUMPIFNOTEQKNIL                  R2 ; [+2]
       35 LOADB                            R1 0 +1
       36 LOADB                            R1 1
       37 FASTCALL2K                       ASSERT R1 K11 ; [+4]
       39 LOADK                            R2 K11 ["Expected sourcePinInfo"]
       40 GETIMPORT                        R0 K13 [assert]
       42 CALL                             R0 2 0
       43 GETUPVAL                         R1 4
       44 GETTABLEKS                       R0 R1 K14 ["createParameterAsync"]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R2 R3 K5 ["visibleMenuState"]
       49 GETTABLEKS                       R1 R2 K10 ["sourcePinInfo"]
       51 CALL                             R0 1 0
       52 JUMP                             ; [+52]
       53 GETUPVAL                         R1 1
       54 FASTCALL1                        TYPE R1 ; [+2]
       55 GETIMPORT                        R0 K16 [type]
       57 CALL                             R0 1 1
       58 JUMPIFNOTEQKS                    R0 K17 ["number"] ; [+36]
       60 GETIMPORT                        R0 K20 [Enum.AnimationNodeType]
       62 GETUPVAL                         R2 1
       63 NAMECALL                         R0 R0 K21 ["FromValue"]
       65 CALL                             R0 2 1
       66 JUMPIFEQKNIL                     R0 ; [+17]
       68 GETUPVAL                         R2 4
       69 GETTABLEKS                       R1 R2 K22 ["createNodeAsync"]
       71 MOVE                             R2 R0
       72 GETUPVAL                         R5 2
       73 GETTABLEKS                       R4 R5 K5 ["visibleMenuState"]
       75 GETTABLEKS                       R3 R4 K23 ["targetPinPosition"]
       77 GETUPVAL                         R6 2
       78 GETTABLEKS                       R5 R6 K5 ["visibleMenuState"]
       80 GETTABLEKS                       R4 R5 K10 ["sourcePinInfo"]
       82 CALL                             R1 3 0
       83 JUMP                             ; [+21]
       84 GETIMPORT                        R1 K7 [warn]
       86 LOADK                            R3 K24 ["Could not convert id to Enum.AnimationNodeType: "]
       87 GETUPVAL                         R5 1
       88 FASTCALL1                        TOSTRING R5 ; [+2]
       89 GETIMPORT                        R4 K3 [tostring]
       91 CALL                             R4 1 1
       92 CONCAT                           R2 R3 R4
       93 CALL                             R1 1 0
       94 JUMP                             ; [+10]
       95 GETIMPORT                        R0 K7 [warn]
       97 LOADK                            R2 K25 ["Unexpected node id type: "]
       98 GETUPVAL                         R4 1
       99 FASTCALL1                        TYPEOF R4 ; [+2]
      100 GETIMPORT                        R3 K27 [typeof]
      102 CALL                             R3 1 1
      103 CONCAT                           R1 R2 R3
      104 CALL                             R0 1 0
      105 GETUPVAL                         R1 0
      106 GETTABLEKS                       R0 R1 K28 ["close"]
      108 CALL                             R0 0 0
      109 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["visibleMenuState"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["visibleMenuState"]
       10 GETTABLEKS                       R0 R1 K1 ["sourcePinInfo"]
       12 JUMPIFNOTEQKNIL                  R0 ; [+3]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETTABLEKS                       R2 R0 K2 ["sourcePinDataType"]
       18 JUMPIFEQKS                       R2 K3 ["Parameter"] ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 NEWTABLE                         R1 0 1
        4 GETIMPORT                        R2 K2 [table.freeze]
        6 DUPTABLE                         R3 K5 [{"title", "items"}]
        7 LOADK                            R4 K6 ["Insert Parameter"]
        8 SETTABLEKS                       R4 R3 K3 ["title"]
       10 GETIMPORT                        R4 K2 [table.freeze]
       12 NEWTABLE                         R5 0 2
       14 GETIMPORT                        R6 K2 [table.freeze]
       16 DUPTABLE                         R7 K10 [{"id", "text", "isDisabled"}]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R8 R9 K11 ["PARAMETER_NODE_CLASSNAME"]
       20 SETTABLEKS                       R8 R7 K7 ["id"]
       22 LOADK                            R8 K12 ["New Parameter"]
       23 SETTABLEKS                       R8 R7 K8 ["text"]
       25 LOADB                            R8 0
       26 SETTABLEKS                       R8 R7 K9 ["isDisabled"]
       28 CALL                             R6 1 1
       29 GETIMPORT                        R7 K2 [table.freeze]
       31 DUPTABLE                         R8 K10 [{"id", "text", "isDisabled"}]
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R9 R10 K11 ["PARAMETER_NODE_CLASSNAME"]
       35 SETTABLEKS                       R9 R8 K7 ["id"]
       37 LOADK                            R9 K13 ["Empty Expression"]
       38 SETTABLEKS                       R9 R8 K8 ["text"]
       40 LOADB                            R9 1
       41 SETTABLEKS                       R9 R8 K9 ["isDisabled"]
       43 CALL                             R7 1 -1
       44 SETLIST                          R5 R6 -1 [1]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K4 ["items"]
       49 CALL                             R2 1 -1
       50 SETLIST                          R1 R2 -1 [1]
       52 CALL                             R0 1 -1
       53 RETURN                           R0 -1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["nodeGroups"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NEWTABLE                         R6 0 0
       10 GETTABLEKS                       R7 R5 K1 ["nodes"]
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 DUPTABLE                         R14 K5 [{"id", "text", "isDisabled"}]
       16 GETTABLEKS                       R16 R11 K6 ["nodeType"]
       18 GETTABLEKS                       R15 R16 K7 ["Value"]
       20 SETTABLEKS                       R15 R14 K2 ["id"]
       22 GETTABLEKS                       R15 R11 K8 ["name"]
       24 SETTABLEKS                       R15 R14 K3 ["text"]
       26 GETTABLEKS                       R15 R11 K4 ["isDisabled"]
       28 SETTABLEKS                       R15 R14 K4 ["isDisabled"]
       30 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       32 MOVE                             R13 R6
       33 GETIMPORT                        R12 K11 [table.insert]
       35 CALL                             R12 2 0
       36 FORGLOOP                         R7 2 ; [-22]
       38 DUPTABLE                         R9 K13 [{"items"}]
       39 SETTABLEKS                       R6 R9 K12 ["items"]
       41 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       43 MOVE                             R8 R0
       44 GETIMPORT                        R7 K11 [table.insert]
       46 CALL                             R7 2 0
       47 FORGLOOP                         R1 2 ; [-40]
       49 RETURN                           R0 1

PROTO_5:
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
       16 GETTABLEKS                       R3 R4 K3 ["useContext"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K3 ["useContext"]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R5 R6 K4 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R3
       37 NEWTABLE                         R7 0 5
       39 GETTABLEKS                       R8 R0 K6 ["log"]
       41 GETTABLEKS                       R9 R0 K7 ["close"]
       43 GETTABLEKS                       R10 R3 K8 ["createNodeAsync"]
       45 GETTABLEKS                       R11 R3 K9 ["createParameterAsync"]
       47 GETTABLEKS                       R12 R4 K10 ["visibleMenuState"]
       49 SETLIST                          R7 R8 5 [1]
       51 CALL                             R5 2 1
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R6 R7 K11 ["useMemo"]
       55 NEWCLOSURE                       R7 P1
       56 CAPTURE                          VAL R4
       57 NEWTABLE                         R8 0 1
       59 GETTABLEKS                       R9 R4 K10 ["visibleMenuState"]
       61 SETLIST                          R8 R9 1 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R7 R8 K11 ["useMemo"]
       67 DUPCLOSURE                       R8 K12 [PROTO_3]
       68 CAPTURE                          UPVAL U5
       69 CALL                             R7 1 1
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R8 R9 K11 ["useMemo"]
       73 NEWCLOSURE                       R9 P3
       74 CAPTURE                          VAL R2
       75 NEWTABLE                         R10 0 3
       77 GETTABLEKS                       R11 R2 K13 ["nodeGroups"]
       79 MOVE                             R12 R1
       80 GETTABLEKS                       R13 R4 K10 ["visibleMenuState"]
       82 SETLIST                          R10 R11 3 [1]
       84 CALL                             R8 2 1
       85 GETTABLEKS                       R9 R0 K14 ["isOpen"]
       87 JUMPIF                           R9 ; [+2]
       88 LOADNIL                          R9
       89 RETURN                           R9 1
       90 GETUPVAL                         R10 1
       91 GETTABLEKS                       R9 R10 K15 ["createElement"]
       93 GETUPVAL                         R11 6
       94 GETTABLEKS                       R10 R11 K16 ["Menu"]
       96 DUPTABLE                         R11 K21 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
       97 GETTABLEKS                       R12 R0 K14 ["isOpen"]
       99 SETTABLEKS                       R12 R11 K14 ["isOpen"]
      101 JUMPIFNOT                        R6 ; [+2]
      102 MOVE                             R12 R7
      103 JUMP                             ; [+1]
      104 MOVE                             R12 R8
      105 SETTABLEKS                       R12 R11 K17 ["items"]
      107 SETTABLEKS                       R5 R11 K18 ["onActivated"]
      109 GETTABLEKS                       R12 R0 K7 ["close"]
      111 SETTABLEKS                       R12 R11 K19 ["onPressedOutside"]
      113 GETUPVAL                         R15 6
      114 GETTABLEKS                       R14 R15 K22 ["Enums"]
      116 GETTABLEKS                       R13 R14 K23 ["InputSize"]
      118 GETTABLEKS                       R12 R13 K24 ["XSmall"]
      120 SETTABLEKS                       R12 R11 K20 ["size"]
      122 CALL                             R9 2 -1
      123 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K12 ["InsertNodeContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K13 ["NativeGraphContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Contexts"]
       46 GETTABLEKS                       R7 R8 K14 ["NodeDefinitionsContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R9 K15 ["React"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K16 [PROTO_5]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 RETURN                           R8 1
