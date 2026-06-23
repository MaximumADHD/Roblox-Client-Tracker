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
        0 DUPTABLE                         R0 K2 [{"title", "items"}]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K3 ["Common"]
        6 LOADK                            R4 K4 ["AnimationEditor"]
        7 LOADK                            R5 K5 ["Menu"]
        8 LOADK                            R6 K6 ["PreviewOn"]
        9 NAMECALL                         R1 R1 K7 ["getExternalText"]
       11 CALL                             R1 5 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K0 ["title"]
       16 NEWTABLE                         R1 0 1
       18 DUPTABLE                         R2 K11 [{"id", "text", "isChecked"}]
       19 LOADK                            R3 K12 ["followSelection"]
       20 SETTABLEKS                       R3 R2 K8 ["id"]
       22 GETUPVAL                         R4 0
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+9]
       25 GETUPVAL                         R3 1
       26 LOADK                            R5 K3 ["Common"]
       27 LOADK                            R6 K4 ["AnimationEditor"]
       28 LOADK                            R7 K5 ["Menu"]
       29 LOADK                            R8 K13 ["SelectedRig"]
       30 NAMECALL                         R3 R3 K7 ["getExternalText"]
       32 CALL                             R3 5 1
       33 JUMP                             ; [+1]
       34 LOADK                            R3 K14 ["Follow selection"]
       35 SETTABLEKS                       R3 R2 K9 ["text"]
       37 GETUPVAL                         R4 0
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+2]
       40 LOADNIL                          R3
       41 JUMP                             ; [+3]
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R3 R3 K12 ["followSelection"]
       45 SETTABLEKS                       R3 R2 K10 ["isChecked"]
       47 SETLIST                          R1 R2 1 [1]
       49 SETTABLEKS                       R1 R0 K1 ["items"]
       51 RETURN                           R0 1

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
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+35]
        5 GETIMPORT                        R1 K2 [table.clone]
        7 GETUPVAL                         R2 1
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K2 [table.clone]
       11 GETTABLEKS                       R3 R1 K3 ["items"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["items"]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K3 ["items"]
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETTABLEKS                       R8 R1 K3 ["items"]
       24 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       26 MOVE                             R9 R6
       27 GETIMPORT                        R7 K5 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-9]
       32 FASTCALL2                        TABLE_INSERT R0 R1 ; [+5]
       34 MOVE                             R3 R0
       35 MOVE                             R4 R1
       36 GETIMPORT                        R2 K5 [table.insert]
       38 CALL                             R2 2 0
       39 RETURN                           R0 1
       40 GETIMPORT                        R1 K7 [next]
       42 GETUPVAL                         R2 2
       43 GETTABLEKS                       R2 R2 K3 ["items"]
       45 CALL                             R1 1 1
       46 JUMPIFNOT                        R1 ; [+7]
       47 GETUPVAL                         R3 2
       48 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       50 MOVE                             R2 R0
       51 GETIMPORT                        R1 K5 [table.insert]
       53 CALL                             R1 2 0
       54 GETIMPORT                        R1 K7 [next]
       56 GETUPVAL                         R2 1
       57 GETTABLEKS                       R2 R2 K3 ["items"]
       59 CALL                             R1 1 1
       60 JUMPIFNOT                        R1 ; [+7]
       61 GETUPVAL                         R3 1
       62 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       64 MOVE                             R2 R0
       65 GETIMPORT                        R1 K5 [table.insert]
       67 CALL                             R1 2 0
       68 RETURN                           R0 1

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
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R8 0 2
       49 MOVE                             R9 R1
       50 GETTABLEKS                       R10 R2 K7 ["followSelection"]
       52 SETLIST                          R8 R9 2 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       58 NEWCLOSURE                       R8 P2
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R9 0 3
       62 GETTABLEKS                       R10 R2 K7 ["followSelection"]
       64 GETTABLEKS                       R11 R2 K9 ["selectRigByIdAsync"]
       66 GETTABLEKS                       R12 R2 K10 ["setFollowSelectionAsync"]
       68 SETLIST                          R9 R10 3 [1]
       70 CALL                             R7 2 1
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       74 NEWCLOSURE                       R9 P3
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 NEWTABLE                         R10 0 2
       80 MOVE                             R11 R5
       81 MOVE                             R12 R6
       82 SETLIST                          R10 R11 2 [1]
       84 CALL                             R8 2 1
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R9 R9 K11 ["createElement"]
       88 GETUPVAL                         R10 5
       89 GETTABLEKS                       R10 R10 K12 ["Dropdown"]
       91 GETTABLEKS                       R10 R10 K13 ["Root"]
       93 DUPTABLE                         R11 K23 [{"size", "width", "label", "items", "value", "onItemChanged", "isDisabled", "placeholder", "LayoutOrder"}]
       94 GETUPVAL                         R12 5
       95 GETTABLEKS                       R12 R12 K24 ["Enums"]
       97 GETTABLEKS                       R12 R12 K25 ["InputSize"]
       99 GETTABLEKS                       R12 R12 K26 ["XSmall"]
      101 SETTABLEKS                       R12 R11 K14 ["size"]
      103 GETIMPORT                        R12 K29 [UDim.new]
      105 LOADN                            R13 0
      106 LOADN                            R14 120
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K15 ["width"]
      110 LOADK                            R12 K30 [""]
      111 SETTABLEKS                       R12 R11 K16 ["label"]
      113 SETTABLEKS                       R8 R11 K17 ["items"]
      115 GETUPVAL                         R13 3
      116 CALL                             R13 0 1
      117 JUMPIFNOT                        R13 ; [+8]
      118 GETTABLEKS                       R13 R2 K7 ["followSelection"]
      120 JUMPIFNOT                        R13 ; [+2]
      121 LOADK                            R12 K7 ["followSelection"]
      122 JUMP                             ; [+5]
      123 GETTABLEKS                       R12 R2 K31 ["selectedRigId"]
      125 JUMP                             ; [+2]
      126 GETTABLEKS                       R12 R2 K31 ["selectedRigId"]
      128 SETTABLEKS                       R12 R11 K18 ["value"]
      130 SETTABLEKS                       R7 R11 K19 ["onItemChanged"]
      132 GETUPVAL                         R13 3
      133 CALL                             R13 0 1
      134 JUMPIFNOT                        R13 ; [+3]
      135 GETTABLEKS                       R12 R4 K32 ["isPreviewRunning"]
      137 JUMP                             ; [+1]
      138 LOADNIL                          R12
      139 SETTABLEKS                       R12 R11 K20 ["isDisabled"]
      141 LOADK                            R14 K33 ["Common"]
      142 LOADK                            R15 K34 ["AnimationEditor"]
      143 LOADK                            R16 K35 ["Menu"]
      144 LOADK                            R17 K36 ["NoGraphName"]
      145 NAMECALL                         R12 R1 K37 ["getExternalText"]
      147 CALL                             R12 5 1
      148 SETTABLEKS                       R12 R11 K21 ["placeholder"]
      150 GETTABLEKS                       R12 R0 K22 ["LayoutOrder"]
      152 SETTABLEKS                       R12 R11 K22 ["LayoutOrder"]
      154 CALL                             R9 2 -1
      155 RETURN                           R9 -1

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
