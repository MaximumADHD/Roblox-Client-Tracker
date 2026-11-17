PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 LENGTH                           R3 R4
        4 LOADN                            R1 1
        5 LOADN                            R2 -1
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
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["Common"]
        3 LOADK                            R4 K4 ["AnimationEditor"]
        4 LOADK                            R5 K5 ["Menu"]
        5 LOADK                            R6 K6 ["PreviewOn"]
        6 NAMECALL                         R1 R1 K7 ["getExternalText"]
        8 CALL                             R1 5 1
        9 SETTABLEKS                       R1 R0 K0 ["title"]
       11 NEWTABLE                         R1 0 1
       13 DUPTABLE                         R2 K11 [{["id"] = "followSelection", ["text"]}]
       14 GETUPVAL                         R3 0
       15 LOADK                            R5 K3 ["Common"]
       16 LOADK                            R6 K4 ["AnimationEditor"]
       17 LOADK                            R7 K5 ["Menu"]
       18 LOADK                            R8 K12 ["SelectedRig"]
       19 NAMECALL                         R3 R3 K7 ["getExternalText"]
       21 CALL                             R3 5 1
       22 SETTABLEKS                       R3 R2 K10 ["text"]
       24 SETLIST                          R1 R2 1 [1]
       26 SETTABLEKS                       R1 R0 K1 ["items"]
       28 RETURN                           R0 1

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
        2 GETIMPORT                        R1 K2 [table.clone]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K2 [table.clone]
        8 GETTABLEKS                       R3 R1 K3 ["items"]
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R1 K3 ["items"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["items"]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETTABLEKS                       R8 R1 K3 ["items"]
       21 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       23 MOVE                             R9 R6
       24 GETIMPORT                        R7 K5 [table.insert]
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 ; [-9]
       29 FASTCALL2                        TABLE_INSERT R0 R1 ; [+5]
       31 MOVE                             R3 R0
       32 MOVE                             R4 R1
       33 GETIMPORT                        R2 K5 [table.insert]
       35 CALL                             R2 2 0
       36 RETURN                           R0 1

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
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K3 ["useContext"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K4 ["Context"]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K3 ["useContext"]
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K4 ["Context"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R8 0 1
       38 MOVE                             R9 R3
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R1
       47 NEWTABLE                         R9 0 2
       49 MOVE                             R10 R1
       50 GETTABLEKS                       R11 R2 K7 ["followSelection"]
       52 SETLIST                          R9 R10 2 [1]
       54 CALL                             R7 2 1
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       58 NEWCLOSURE                       R9 P2
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R10 0 3
       62 GETTABLEKS                       R11 R2 K7 ["followSelection"]
       64 GETTABLEKS                       R12 R2 K9 ["selectRigByIdAsync"]
       66 GETTABLEKS                       R13 R2 K10 ["setFollowSelectionAsync"]
       68 SETLIST                          R10 R11 3 [1]
       70 CALL                             R8 2 1
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       74 NEWCLOSURE                       R10 P3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 NEWTABLE                         R11 0 2
       79 MOVE                             R12 R6
       80 MOVE                             R13 R7
       81 SETLIST                          R11 R12 2 [1]
       83 CALL                             R9 2 1
       84 GETUPVAL                         R10 1
       85 GETTABLEKS                       R10 R10 K11 ["createElement"]
       87 GETUPVAL                         R11 5
       88 GETTABLEKS                       R11 R11 K12 ["Dropdown"]
       90 GETTABLEKS                       R11 R11 K13 ["Root"]
       92 DUPTABLE                         R12 K24 [{["size"], ["width"], ["label"] = "", ["items"], ["value"], ["onItemChanged"], ["isDisabled"], ["placeholder"], ["LayoutOrder"]}]
       93 GETUPVAL                         R13 5
       94 GETTABLEKS                       R13 R13 K25 ["Enums"]
       96 GETTABLEKS                       R13 R13 K26 ["InputSize"]
       98 GETTABLEKS                       R13 R13 K27 ["XSmall"]
      100 SETTABLEKS                       R13 R12 K14 ["size"]
      102 GETIMPORT                        R13 K30 [UDim.new]
      104 LOADN                            R14 0
      105 LOADN                            R15 120
      106 CALL                             R13 2 1
      107 SETTABLEKS                       R13 R12 K15 ["width"]
      109 SETTABLEKS                       R9 R12 K18 ["items"]
      111 GETTABLEKS                       R14 R5 K31 ["isPreviewEnabled"]
      113 JUMPIF                           R14 ; [+2]
      114 LOADK                            R13 K17 [""]
      115 JUMP                             ; [+7]
      116 GETTABLEKS                       R14 R2 K7 ["followSelection"]
      118 JUMPIFNOT                        R14 ; [+2]
      119 LOADK                            R13 K7 ["followSelection"]
      120 JUMP                             ; [+2]
      121 GETTABLEKS                       R13 R2 K32 ["selectedRigId"]
      123 SETTABLEKS                       R13 R12 K19 ["value"]
      125 SETTABLEKS                       R8 R12 K20 ["onItemChanged"]
      127 GETTABLEKS                       R14 R5 K31 ["isPreviewEnabled"]
      129 NOT                              R13 R14
      130 JUMPIF                           R13 ; [+2]
      131 GETTABLEKS                       R13 R4 K33 ["isPreviewRunning"]
      133 SETTABLEKS                       R13 R12 K21 ["isDisabled"]
      135 GETTABLEKS                       R14 R5 K31 ["isPreviewEnabled"]
      137 JUMPIF                           R14 ; [+13]
      138 GETUPVAL                         R14 6
      139 CALL                             R14 0 1
      140 JUMPIFNOT                        R14 ; [+8]
      141 LOADK                            R15 K34 ["Common"]
      142 LOADK                            R16 K35 ["AnimationEditor"]
      143 LOADK                            R17 K36 ["Menu"]
      144 LOADK                            R18 K37 ["NoPreview"]
      145 NAMECALL                         R13 R1 K38 ["getExternalText"]
      147 CALL                             R13 5 1
      148 JUMP                             ; [+9]
      149 LOADK                            R13 K39 ["No Preview"]
      150 JUMP                             ; [+7]
      151 LOADK                            R15 K34 ["Common"]
      152 LOADK                            R16 K35 ["AnimationEditor"]
      153 LOADK                            R17 K36 ["Menu"]
      154 LOADK                            R18 K40 ["NoGraphName"]
      155 NAMECALL                         R13 R1 K38 ["getExternalText"]
      157 CALL                             R13 5 1
      158 SETTABLEKS                       R13 R12 K22 ["placeholder"]
      160 GETTABLEKS                       R13 R0 K23 ["LayoutOrder"]
      162 SETTABLEKS                       R13 R12 K23 ["LayoutOrder"]
      164 CALL                             R10 2 -1
      165 RETURN                           R10 -1

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
       30 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["PlayStateContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K13 ["RigListContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUI_Localization2"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K16 [PROTO_4]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R7
       64 RETURN                           R8 1
