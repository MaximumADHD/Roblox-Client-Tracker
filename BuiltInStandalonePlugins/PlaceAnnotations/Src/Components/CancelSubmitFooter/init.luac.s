PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Text"]
        3 LOADK                            R2 K1 ["^%s*"]
        4 LOADK                            R3 K2 [""]
        5 NAMECALL                         R0 R0 K3 ["gsub"]
        7 CALL                             R0 3 1
        8 LOADK                            R3 K4 ["%s*$"]
        9 LOADK                            R4 K2 [""]
       10 NAMECALL                         R1 R0 K3 ["gsub"]
       12 CALL                             R1 3 1
       13 MOVE                             R0 R1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K5 ["OnSubmit"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.Return]
        4 JUMPIFNOTEQ                      R1 R2 ; [+7]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R1 1
        9 JUMPIF                           R1 ; [+2]
       10 GETUPVAL                         R1 2
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["InputBegan"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 LOADB                            R2 0
        5 GETTABLEKS                       R3 R0 K1 ["Text"]
        7 JUMPIFEQKS                       R3 K2 [""] ; [+20]
        9 GETTABLEKS                       R3 R0 K1 ["Text"]
       11 LOADK                            R5 K3 ["^%s*$"]
       12 NAMECALL                         R3 R3 K4 ["match"]
       14 CALL                             R3 2 1
       15 NOT                              R2 R3
       16 JUMPIFNOT                        R2 ; [+11]
       17 GETTABLEKS                       R4 R0 K1 ["Text"]
       19 FASTCALL1                        STRING_LEN R4 ; [+2]
       20 GETIMPORT                        R3 K7 [string.len]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 1
       24 JUMPIFLE                         R3 R4 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R3 R4 K8 ["useContext"]
       31 GETUPVAL                         R4 3
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R4 R3 K9 ["isTagDropdownOpen"]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K10 ["useCallback"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R0
       40 NEWTABLE                         R7 0 2
       42 GETTABLEKS                       R8 R0 K1 ["Text"]
       44 GETTABLEKS                       R9 R0 K11 ["OnSubmit"]
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R6 R7 K12 ["useEffect"]
       52 NEWCLOSURE                       R7 P1
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CALL                             R6 1 0
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R6 R7 K13 ["createElement"]
       61 LOADK                            R7 K14 ["Frame"]
       62 NEWTABLE                         R8 2 0
       64 GETTABLEKS                       R9 R0 K15 ["LayoutOrder"]
       66 SETTABLEKS                       R9 R8 K15 ["LayoutOrder"]
       68 GETUPVAL                         R10 2
       69 GETTABLEKS                       R9 R10 K16 ["Tag"]
       71 LOADK                            R10 K17 ["Component-CancelSubmitFooter X-Right X-RowM X-FitY"]
       72 SETTABLE                         R10 R8 R9
       73 DUPTABLE                         R9 K20 [{"CancelButton", "SubmitButton"}]
       74 GETUPVAL                         R11 2
       75 GETTABLEKS                       R10 R11 K13 ["createElement"]
       77 LOADK                            R11 K21 ["TextButton"]
       78 NEWTABLE                         R12 2 0
       80 LOADK                            R15 K22 ["AddAnnotation"]
       81 LOADK                            R16 K23 ["Cancel"]
       82 NAMECALL                         R13 R1 K24 ["getText"]
       84 CALL                             R13 3 1
       85 SETTABLEKS                       R13 R12 K1 ["Text"]
       87 GETUPVAL                         R15 2
       88 GETTABLEKS                       R14 R15 K25 ["Event"]
       90 GETTABLEKS                       R13 R14 K26 ["Activated"]
       92 GETTABLEKS                       R14 R0 K27 ["OnCancel"]
       94 SETTABLE                         R14 R12 R13
       95 CALL                             R10 2 1
       96 SETTABLEKS                       R10 R9 K18 ["CancelButton"]
       98 GETUPVAL                         R11 2
       99 GETTABLEKS                       R10 R11 K13 ["createElement"]
      101 LOADK                            R11 K21 ["TextButton"]
      102 NEWTABLE                         R12 8 0
      104 LOADK                            R15 K22 ["AddAnnotation"]
      105 LOADK                            R16 K28 ["Submit"]
      106 NAMECALL                         R13 R1 K24 ["getText"]
      108 CALL                             R13 3 1
      109 SETTABLEKS                       R13 R12 K1 ["Text"]
      111 SETTABLEKS                       R2 R12 K29 ["Interactable"]
      113 SETTABLEKS                       R2 R12 K30 ["Selectable"]
      115 GETUPVAL                         R15 2
      116 GETTABLEKS                       R14 R15 K25 ["Event"]
      118 GETTABLEKS                       R13 R14 K26 ["Activated"]
      120 SETTABLE                         R5 R12 R13
      121 GETUPVAL                         R14 2
      122 GETTABLEKS                       R13 R14 K16 ["Tag"]
      124 JUMPIFNOT                        R2 ; [+2]
      125 LOADNIL                          R14
      126 JUMP                             ; [+1]
      127 LOADK                            R14 K31 ["Disabled"]
      128 SETTABLE                         R14 R12 R13
      129 CALL                             R10 2 1
      130 SETTABLEKS                       R10 R9 K19 ["SubmitButton"]
      132 CALL                             R6 3 -1
      133 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Bin"]
       25 GETTABLEKS                       R5 R6 K10 ["Common"]
       27 GETTABLEKS                       R4 R5 K11 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["Localization"]
       34 GETTABLEKS                       R6 R3 K14 ["fflagAnnotationsMaxTextLength"]
       36 GETIMPORT                        R7 K16 [game]
       38 LOADK                            R9 K17 ["UserInputService"]
       39 NAMECALL                         R7 R7 K18 ["GetService"]
       41 CALL                             R7 2 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R12 R0 K19 ["Src"]
       46 GETTABLEKS                       R11 R12 K20 ["Contexts"]
       48 GETTABLEKS                       R10 R11 K21 ["TagDropdownContext"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R8 R9 K21 ["TagDropdownContext"]
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R11 R0 K19 ["Src"]
       57 GETTABLEKS                       R10 R11 K22 ["Types"]
       59 CALL                             R9 1 1
       60 DUPCLOSURE                       R10 K23 [PROTO_4]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R7
       66 RETURN                           R10 1
