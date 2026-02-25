PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["of"]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R3 K2 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K3 ["Instance"] ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       20 LOADK                            R3 K4 ["Parent is not Instance"]
       21 GETIMPORT                        R1 K6 [assert]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K7 ["observeChildrenWhichIsA"]
       27 MOVE                             R2 R0
       28 LOADK                            R3 K8 ["AnimationGraphDefinition"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["properties"]
        3 GETTABLEKS                       R1 R2 K1 ["observeString"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["UniqueId"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["properties"]
       11 GETTABLEKS                       R2 R3 K1 ["observeString"]
       13 MOVE                             R3 R0
       14 LOADK                            R4 K3 ["Name"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K4 ["createComputed"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CALL                             R3 1 -1
       24 RETURN                           R3 -1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Received number from dropdown"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLE                         R1 R2 R0
       17 JUMPIFNOTEQKNIL                  R1 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       23 LOADK                            R4 K6 ["Item changed to graph we don't know about"]
       24 GETIMPORT                        R2 K5 [assert]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K7 ["selectionService"]
       30 NEWTABLE                         R4 0 1
       32 MOVE                             R5 R1
       33 SETLIST                          R4 R5 1 [1]
       35 NAMECALL                         R2 R2 K8 ["Set"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 NEWTABLE                         R3 0 0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U1
       10 MOVE                             R5 R1
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 GETTABLEKS                       R10 R9 K0 ["UniqueId"]
       16 SETTABLE                         R9 R3 R10
       17 DUPTABLE                         R12 K3 [{"id", "text"}]
       18 GETTABLEKS                       R13 R9 K0 ["UniqueId"]
       20 SETTABLEKS                       R13 R12 K1 ["id"]
       22 GETTABLEKS                       R13 R9 K4 ["Name"]
       24 SETTABLEKS                       R13 R12 K2 ["text"]
       26 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       28 MOVE                             R11 R2
       29 GETIMPORT                        R10 K7 [table.insert]
       31 CALL                             R10 2 0
       32 FORGLOOP                         R5 2 ; [-19]
       34 DUPTABLE                         R5 K10 [{"items", "onItemChanged"}]
       35 SETTABLEKS                       R2 R5 K8 ["items"]
       37 SETTABLEKS                       R4 R5 K9 ["onItemChanged"]
       39 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectedGraphInstance"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKNIL                     R0 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["Parent"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+14]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K2 ["createSignal"]
       13 DUPTABLE                         R2 K5 [{"items", "onItemChanged"}]
       14 NEWTABLE                         R3 0 0
       16 SETTABLEKS                       R3 R2 K3 ["items"]
       18 DUPCLOSURE                       R3 K6 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K4 ["onItemChanged"]
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K7 ["properties"]
       26 GETTABLEKS                       R1 R2 K8 ["observeInstance"]
       28 MOVE                             R2 R0
       29 LOADK                            R3 K1 ["Parent"]
       30 CALL                             R1 2 1
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R2 R3 K9 ["switchMap"]
       34 MOVE                             R3 R1
       35 DUPCLOSURE                       R4 K10 [PROTO_1]
       36 CAPTURE                          UPVAL U3
       37 CALL                             R2 2 1
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R3 R4 K11 ["forEach"]
       41 MOVE                             R4 R2
       42 DUPCLOSURE                       R5 K12 [PROTO_3]
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U1
       45 CALL                             R3 2 1
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R4 R5 K13 ["createComputed"]
       49 NEWCLOSURE                       R5 P3
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U4
       52 CALL                             R4 1 -1
       53 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R4 0 2
       25 GETTABLEKS                       R5 R0 K3 ["getSelectedGraphInstance"]
       27 GETTABLEKS                       R6 R1 K4 ["selectionService"]
       29 SETLIST                          R4 R5 2 [1]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_8:
        0 LOADNIL                          R1
        1 RETURN                           R1 1
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        5 GETTABLEKS                       R1 R2 K1 ["Localization"]
        7 NAMECALL                         R1 R1 K2 ["use"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K3 ["useContext"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K4 ["Context"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K5 ["getSelectedGraphInstance"]
       19 CALL                             R3 0 1
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R4 R5 K6 ["useSignalState"]
       23 GETUPVAL                         R5 4
       24 CALL                             R5 0 -1
       25 CALL                             R4 -1 1
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K7 ["createElement"]
       29 GETUPVAL                         R8 5
       30 GETTABLEKS                       R7 R8 K8 ["Dropdown"]
       32 GETTABLEKS                       R6 R7 K9 ["Root"]
       34 DUPTABLE                         R7 K18 [{"label", "placeholder", "isDisabled", "value", "size", "width", "onItemChanged", "items"}]
       35 LOADK                            R8 K19 [""]
       36 SETTABLEKS                       R8 R7 K10 ["label"]
       38 LOADK                            R10 K20 ["CompositorMenu"]
       39 LOADK                            R11 K21 ["GraphDefaultName"]
       40 NAMECALL                         R8 R1 K22 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K11 ["placeholder"]
       45 GETTABLEKS                       R10 R4 K17 ["items"]
       47 LENGTH                           R9 R10
       48 JUMPIFEQKN                       R9 K23 [0] ; [+2]
       50 LOADB                            R8 0 +1
       51 LOADB                            R8 1
       52 SETTABLEKS                       R8 R7 K12 ["isDisabled"]
       54 MOVE                             R8 R3
       55 JUMPIFNOT                        R8 ; [+2]
       56 GETTABLEKS                       R8 R3 K24 ["UniqueId"]
       58 SETTABLEKS                       R8 R7 K13 ["value"]
       60 GETUPVAL                         R11 5
       61 GETTABLEKS                       R10 R11 K25 ["Enums"]
       63 GETTABLEKS                       R9 R10 K26 ["InputSize"]
       65 GETTABLEKS                       R8 R9 K27 ["XSmall"]
       67 SETTABLEKS                       R8 R7 K14 ["size"]
       69 GETIMPORT                        R8 K30 [UDim.new]
       71 LOADN                            R9 0
       72 LOADN                            R10 120
       73 CALL                             R8 2 1
       74 SETTABLEKS                       R8 R7 K15 ["width"]
       76 GETTABLEKS                       R8 R4 K16 ["onItemChanged"]
       78 SETTABLEKS                       R8 R7 K16 ["onItemChanged"]
       80 GETTABLEKS                       R8 R4 K17 ["items"]
       82 SETTABLEKS                       R8 R7 K17 ["items"]
       84 CALL                             R5 2 -1
       85 RETURN                           R5 -1

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
       25 GETTABLEKS                       R4 R5 K10 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K9 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K12 ["SelectionServiceContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R8 K13 ["Signals"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K14 ["Util"]
       53 GETTABLEKS                       R9 R10 K13 ["Signals"]
       55 GETTABLEKS                       R8 R9 K15 ["SignalsInstanceUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K6 ["Parent"]
       62 GETTABLEKS                       R9 R10 K16 ["SignalsReact"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K14 ["Util"]
       69 GETTABLEKS                       R11 R12 K13 ["Signals"]
       71 GETTABLEKS                       R10 R11 K17 ["TypedInstanceSignals"]
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K18 [PROTO_7]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R7
       81 DUPCLOSURE                       R11 K19 [PROTO_8]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R1
       88 RETURN                           R11 1
