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
       18 DUPTABLE                         R2 K12 [{["id"] = "followSelection", ["text"], ["isChecked"]}]
       19 GETUPVAL                         R4 0
       20 CALL                             R4 0 1
       21 JUMPIFNOT                        R4 ; [+9]
       22 GETUPVAL                         R3 1
       23 LOADK                            R5 K3 ["Common"]
       24 LOADK                            R6 K4 ["AnimationEditor"]
       25 LOADK                            R7 K5 ["Menu"]
       26 LOADK                            R8 K13 ["SelectedRig"]
       27 NAMECALL                         R3 R3 K7 ["getExternalText"]
       29 CALL                             R3 5 1
       30 JUMP                             ; [+1]
       31 LOADK                            R3 K14 ["Follow selection"]
       32 SETTABLEKS                       R3 R2 K10 ["text"]
       34 GETUPVAL                         R4 0
       35 CALL                             R4 0 1
       36 JUMPIFNOT                        R4 ; [+2]
       37 LOADNIL                          R3
       38 JUMP                             ; [+3]
       39 GETUPVAL                         R3 2
       40 GETTABLEKS                       R3 R3 K9 ["followSelection"]
       42 SETTABLEKS                       R3 R2 K11 ["isChecked"]
       44 SETLIST                          R1 R2 1 [1]
       46 SETTABLEKS                       R1 R0 K1 ["items"]
       48 RETURN                           R0 1

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
       29 GETUPVAL                         R6 3
       30 CALL                             R6 0 1
       31 JUMPIFNOT                        R6 ; [+8]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K3 ["useContext"]
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R6 R6 K4 ["Context"]
       38 CALL                             R5 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R8 0 1
       48 MOVE                             R9 R3
       49 SETLIST                          R8 R9 1 [1]
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       55 NEWCLOSURE                       R8 P1
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 NEWTABLE                         R9 0 2
       61 MOVE                             R10 R1
       62 GETTABLEKS                       R11 R2 K7 ["followSelection"]
       64 SETLIST                          R9 R10 2 [1]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       70 NEWCLOSURE                       R9 P2
       71 CAPTURE                          VAL R2
       72 NEWTABLE                         R10 0 3
       74 GETTABLEKS                       R11 R2 K7 ["followSelection"]
       76 GETTABLEKS                       R12 R2 K9 ["selectRigByIdAsync"]
       78 GETTABLEKS                       R13 R2 K10 ["setFollowSelectionAsync"]
       80 SETLIST                          R10 R11 3 [1]
       82 CALL                             R8 2 1
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       86 NEWCLOSURE                       R10 P3
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R6
       90 NEWTABLE                         R11 0 2
       92 MOVE                             R12 R6
       93 MOVE                             R13 R7
       94 SETLIST                          R11 R12 2 [1]
       96 CALL                             R9 2 1
       97 GETUPVAL                         R10 1
       98 GETTABLEKS                       R10 R10 K11 ["createElement"]
      100 GETUPVAL                         R11 6
      101 GETTABLEKS                       R11 R11 K12 ["Dropdown"]
      103 GETTABLEKS                       R11 R11 K13 ["Root"]
      105 DUPTABLE                         R12 K24 [{["size"], ["width"], ["label"] = "", ["items"], ["value"], ["onItemChanged"], ["isDisabled"], ["placeholder"], ["LayoutOrder"]}]
      106 GETUPVAL                         R13 6
      107 GETTABLEKS                       R13 R13 K25 ["Enums"]
      109 GETTABLEKS                       R13 R13 K26 ["InputSize"]
      111 GETTABLEKS                       R13 R13 K27 ["XSmall"]
      113 SETTABLEKS                       R13 R12 K14 ["size"]
      115 GETIMPORT                        R13 K30 [UDim.new]
      117 LOADN                            R14 0
      118 LOADN                            R15 120
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K15 ["width"]
      122 SETTABLEKS                       R9 R12 K18 ["items"]
      124 GETUPVAL                         R14 3
      125 CALL                             R14 0 1
      126 JUMPIFNOT                        R14 ; [+13]
      127 GETTABLEKS                       R14 R5 K31 ["isPreviewEnabled"]
      129 JUMPIF                           R14 ; [+2]
      130 LOADK                            R13 K17 [""]
      131 JUMP                             ; [+10]
      132 GETTABLEKS                       R14 R2 K7 ["followSelection"]
      134 JUMPIFNOT                        R14 ; [+2]
      135 LOADK                            R13 K7 ["followSelection"]
      136 JUMP                             ; [+5]
      137 GETTABLEKS                       R13 R2 K32 ["selectedRigId"]
      139 JUMP                             ; [+2]
      140 GETTABLEKS                       R13 R2 K32 ["selectedRigId"]
      142 SETTABLEKS                       R13 R12 K19 ["value"]
      144 SETTABLEKS                       R8 R12 K20 ["onItemChanged"]
      146 GETUPVAL                         R14 3
      147 CALL                             R14 0 1
      148 JUMPIFNOT                        R14 ; [+7]
      149 GETTABLEKS                       R14 R5 K31 ["isPreviewEnabled"]
      151 NOT                              R13 R14
      152 JUMPIF                           R13 ; [+4]
      153 GETTABLEKS                       R13 R4 K33 ["isPreviewRunning"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R13
      157 SETTABLEKS                       R13 R12 K21 ["isDisabled"]
      159 GETUPVAL                         R14 3
      160 CALL                             R14 0 1
      161 JUMPIFNOT                        R14 ; [+5]
      162 GETTABLEKS                       R14 R5 K31 ["isPreviewEnabled"]
      164 JUMPIF                           R14 ; [+2]
      165 LOADK                            R13 K34 ["No Preview"]
      166 JUMP                             ; [+7]
      167 LOADK                            R15 K35 ["Common"]
      168 LOADK                            R16 K36 ["AnimationEditor"]
      169 LOADK                            R17 K37 ["Menu"]
      170 LOADK                            R18 K38 ["NoGraphName"]
      171 NAMECALL                         R13 R1 K39 ["getExternalText"]
      173 CALL                             R13 5 1
      174 SETTABLEKS                       R13 R12 K22 ["placeholder"]
      176 GETTABLEKS                       R13 R0 K23 ["LayoutOrder"]
      178 SETTABLEKS                       R13 R12 K23 ["LayoutOrder"]
      180 CALL                             R10 2 -1
      181 RETURN                           R10 -1

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
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUI_RunTimeDebug"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K16 [PROTO_4]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R1
       64 RETURN                           R8 1
