PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 LENGTH                           R3 R4
        4 LOADN                            R1 1
        5 LOADN                            R2 255
        6 FORNPREP                         R1
        7 DUPTABLE                         R6 K2 [{"id", "text"}]
        8 GETUPVAL                         R9 0
        9 GETTABLE                         R8 R9 R3
       10 GETTABLEKS                       R7 R8 K0 ["id"]
       12 SETTABLEKS                       R7 R6 K0 ["id"]
       14 GETUPVAL                         R9 0
       15 GETTABLE                         R8 R9 R3
       16 GETTABLEKS                       R7 R8 K3 ["name"]
       18 SETTABLEKS                       R7 R6 K1 ["text"]
       20 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
       22 MOVE                             R5 R0
       23 GETIMPORT                        R4 K6 [table.insert]
       25 CALL                             R4 2 0
       26 FORNLOOP                         R1
       27 DUPTABLE                         R1 K8 [{"items"}]
       28 SETTABLEKS                       R0 R1 K7 ["items"]
       30 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"items"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K5 [{"id", "text", "isChecked"}]
        4 LOADK                            R3 K6 ["followSelection"]
        5 SETTABLEKS                       R3 R2 K2 ["id"]
        7 LOADK                            R3 K7 ["Follow selection"]
        8 SETTABLEKS                       R3 R2 K3 ["text"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K6 ["followSelection"]
       13 SETTABLEKS                       R3 R2 K4 ["isChecked"]
       15 SETLIST                          R1 R2 1 [1]
       17 SETTABLEKS                       R1 R0 K0 ["items"]
       19 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["followSelection"] ; [+12]
        2 GETIMPORT                        R1 K3 [task.spawn]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K4 ["setFollowSelectionAsync"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["followSelection"]
       10 NOT                              R3 R4
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R4 R0
       15 GETIMPORT                        R3 K6 [typeof]
       17 CALL                             R3 1 1
       18 JUMPIFEQKS                       R3 K7 ["string"] ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       24 LOADK                            R3 K8 ["Dropdown item ID is not a string"]
       25 GETIMPORT                        R1 K10 [assert]
       27 CALL                             R1 2 0
       28 GETIMPORT                        R1 K3 [task.spawn]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K11 ["selectRigByIdAsync"]
       33 MOVE                             R3 R0
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [next]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["items"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETUPVAL                         R3 0
       10 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K5 [table.insert]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K1 [next]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K2 ["items"]
       21 CALL                             R1 1 1
       22 JUMPIFNOT                        R1 ; [+7]
       23 GETUPVAL                         R3 1
       24 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       26 MOVE                             R2 R0
       27 GETIMPORT                        R1 K5 [table.insert]
       29 CALL                             R1 2 0
       30 RETURN                           R0 1

PROTO_4:
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
       15 GETTABLEKS                       R3 R2 K5 ["rigReferences"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K6 ["useMemo"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R3
       25 SETLIST                          R6 R7 1 [1]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K6 ["useMemo"]
       31 NEWCLOSURE                       R6 P1
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R7 0 2
       35 MOVE                             R8 R1
       36 GETTABLEKS                       R9 R2 K7 ["followSelection"]
       38 SETLIST                          R7 R8 2 [1]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R6 R7 K8 ["useCallback"]
       44 NEWCLOSURE                       R7 P2
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R8 0 3
       48 GETTABLEKS                       R9 R2 K7 ["followSelection"]
       50 GETTABLEKS                       R10 R2 K9 ["selectRigByIdAsync"]
       52 GETTABLEKS                       R11 R2 K10 ["setFollowSelectionAsync"]
       54 SETLIST                          R8 R9 3 [1]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R7 R8 K6 ["useMemo"]
       60 NEWCLOSURE                       R8 P3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R9 0 2
       65 MOVE                             R10 R4
       66 MOVE                             R11 R5
       67 SETLIST                          R9 R10 2 [1]
       69 CALL                             R7 2 1
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R8 R9 K11 ["createElement"]
       73 GETUPVAL                         R11 3
       74 GETTABLEKS                       R10 R11 K12 ["Dropdown"]
       76 GETTABLEKS                       R9 R10 K13 ["Root"]
       78 DUPTABLE                         R10 K22 [{"size", "width", "label", "items", "value", "onItemChanged", "placeholder", "LayoutOrder"}]
       79 GETUPVAL                         R14 3
       80 GETTABLEKS                       R13 R14 K23 ["Enums"]
       82 GETTABLEKS                       R12 R13 K24 ["InputSize"]
       84 GETTABLEKS                       R11 R12 K25 ["XSmall"]
       86 SETTABLEKS                       R11 R10 K14 ["size"]
       88 GETIMPORT                        R11 K28 [UDim.new]
       90 LOADN                            R12 0
       91 LOADN                            R13 120
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K15 ["width"]
       95 LOADK                            R11 K29 [""]
       96 SETTABLEKS                       R11 R10 K16 ["label"]
       98 SETTABLEKS                       R7 R10 K17 ["items"]
      100 GETTABLEKS                       R11 R2 K30 ["selectedRigId"]
      102 SETTABLEKS                       R11 R10 K18 ["value"]
      104 SETTABLEKS                       R6 R10 K19 ["onItemChanged"]
      106 LOADK                            R13 K31 ["Common"]
      107 LOADK                            R14 K32 ["AnimationEditor"]
      108 LOADK                            R15 K33 ["Menu"]
      109 LOADK                            R16 K34 ["NoGraphName"]
      110 NAMECALL                         R11 R1 K35 ["getExternalText"]
      112 CALL                             R11 5 1
      113 SETTABLEKS                       R11 R10 K20 ["placeholder"]
      115 GETTABLEKS                       R11 R0 K21 ["LayoutOrder"]
      117 SETTABLEKS                       R11 R10 K21 ["LayoutOrder"]
      119 CALL                             R8 2 -1
      120 RETURN                           R8 -1

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
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K11 ["RigListContext"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_4]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
