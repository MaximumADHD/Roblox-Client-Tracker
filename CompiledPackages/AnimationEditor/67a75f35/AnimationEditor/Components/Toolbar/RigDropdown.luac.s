PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 LENGTH                           R3 R4
        4 LOADN                            R1 1
        5 LOADN                            R2 255
        6 FORNPREP                         R1
        7 DUPTABLE                         R6 K2 [{"id", "text"}]
        8 GETUPVAL                         R8 0
        9 GETTABLE                         R7 R8 R3
       10 GETTABLEKS                       R7 R7 K0 ["id"]
       12 SETTABLEKS                       R7 R6 K0 ["id"]
       14 GETUPVAL                         R8 0
       15 GETTABLE                         R7 R8 R3
       16 GETTABLEKS                       R7 R7 K3 ["name"]
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
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K6 ["followSelection"]
       13 SETTABLEKS                       R3 R2 K4 ["isChecked"]
       15 SETLIST                          R1 R2 1 [1]
       17 SETTABLEKS                       R1 R0 K0 ["items"]
       19 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["followSelection"] ; [+12]
        2 GETIMPORT                        R1 K3 [task.spawn]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K4 ["setFollowSelectionAsync"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["followSelection"]
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
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K11 ["selectRigByIdAsync"]
       33 MOVE                             R3 R0
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [next]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["items"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETUPVAL                         R3 0
       10 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K5 [table.insert]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K1 [next]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K2 ["items"]
       21 CALL                             R1 1 1
       22 JUMPIFNOT                        R1 ; [+7]
       23 GETUPVAL                         R3 1
       24 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       26 MOVE                             R2 R0
       27 GETIMPORT                        R1 K5 [table.insert]
       29 CALL                             R1 2 0
       30 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R2 K5 ["rigReferences"]
       17 GETUPVAL                         R5 3
       18 CALL                             R5 0 1
       19 JUMPIFNOT                        R5 ; [+8]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K3 ["useContext"]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K4 ["Context"]
       26 CALL                             R4 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 1
       36 MOVE                             R8 R3
       37 SETLIST                          R7 R8 1 [1]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          VAL R2
       45 NEWTABLE                         R8 0 2
       47 MOVE                             R9 R1
       48 GETTABLEKS                       R10 R2 K7 ["followSelection"]
       50 SETLIST                          R8 R9 2 [1]
       52 CALL                             R6 2 1
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       56 NEWCLOSURE                       R8 P2
       57 CAPTURE                          VAL R2
       58 NEWTABLE                         R9 0 3
       60 GETTABLEKS                       R10 R2 K7 ["followSelection"]
       62 GETTABLEKS                       R11 R2 K9 ["selectRigByIdAsync"]
       64 GETTABLEKS                       R12 R2 K10 ["setFollowSelectionAsync"]
       66 SETLIST                          R9 R10 3 [1]
       68 CALL                             R7 2 1
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       72 NEWCLOSURE                       R9 P3
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 NEWTABLE                         R10 0 2
       77 MOVE                             R11 R5
       78 MOVE                             R12 R6
       79 SETLIST                          R10 R11 2 [1]
       81 CALL                             R8 2 1
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R9 R9 K11 ["createElement"]
       85 GETUPVAL                         R10 5
       86 GETTABLEKS                       R10 R10 K12 ["Dropdown"]
       88 GETTABLEKS                       R10 R10 K13 ["Root"]
       90 DUPTABLE                         R11 K23 [{"size", "width", "label", "items", "value", "onItemChanged", "isDisabled", "placeholder", "LayoutOrder"}]
       91 GETUPVAL                         R12 5
       92 GETTABLEKS                       R12 R12 K24 ["Enums"]
       94 GETTABLEKS                       R12 R12 K25 ["InputSize"]
       96 GETTABLEKS                       R12 R12 K26 ["XSmall"]
       98 SETTABLEKS                       R12 R11 K14 ["size"]
      100 GETIMPORT                        R12 K29 [UDim.new]
      102 LOADN                            R13 0
      103 LOADN                            R14 120
      104 CALL                             R12 2 1
      105 SETTABLEKS                       R12 R11 K15 ["width"]
      107 LOADK                            R12 K30 [""]
      108 SETTABLEKS                       R12 R11 K16 ["label"]
      110 SETTABLEKS                       R8 R11 K17 ["items"]
      112 GETTABLEKS                       R12 R2 K31 ["selectedRigId"]
      114 SETTABLEKS                       R12 R11 K18 ["value"]
      116 SETTABLEKS                       R7 R11 K19 ["onItemChanged"]
      118 GETUPVAL                         R13 3
      119 CALL                             R13 0 1
      120 JUMPIFNOT                        R13 ; [+3]
      121 GETTABLEKS                       R12 R4 K32 ["isPreviewRunning"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R12
      125 SETTABLEKS                       R12 R11 K20 ["isDisabled"]
      127 LOADK                            R14 K33 ["Common"]
      128 LOADK                            R15 K34 ["AnimationEditor"]
      129 LOADK                            R16 K35 ["Menu"]
      130 LOADK                            R17 K36 ["NoGraphName"]
      131 NAMECALL                         R12 R1 K37 ["getExternalText"]
      133 CALL                             R12 5 1
      134 SETTABLEKS                       R12 R11 K21 ["placeholder"]
      136 GETTABLEKS                       R12 R0 K22 ["LayoutOrder"]
      138 SETTABLEKS                       R12 R11 K22 ["LayoutOrder"]
      140 CALL                             R9 2 -1
      141 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["GraphPlayedContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K12 ["RigListContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimGraphUI_RunTimeDebug"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K15 [PROTO_4]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 RETURN                           R7 1
