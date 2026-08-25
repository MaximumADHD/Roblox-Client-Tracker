PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["interactable"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["value"]
        7 JUMPIFNOTEQKNIL                  R0 ; [+11]
        9 GETUPVAL                         R0 1
       10 JUMPIFEQKNIL                     R0 ; [+8]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["setValue"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K3 ["id"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["interactable"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["setValue"]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K3 [tostring]
       12 CALL                             R2 1 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["definition"]
        2 GETTABLEKS                       R1 R1 K1 ["selectOptions"]
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETTABLEKS                       R2 R0 K2 ["getRowValue"]
        9 GETTABLEN                        R3 R1 1
       10 GETTABLEKS                       R4 R0 K3 ["value"]
       12 JUMPIF                           R4 ; [+5]
       13 JUMPIFNOT                        R3 ; [+3]
       14 GETTABLEKS                       R4 R3 K4 ["id"]
       16 JUMPIF                           R4 ; [+1]
       17 LOADK                            R4 K5 [""]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R7 0 4
       26 GETTABLEKS                       R8 R0 K7 ["interactable"]
       28 GETTABLEKS                       R9 R0 K3 ["value"]
       30 GETTABLEKS                       R10 R0 K8 ["setValue"]
       32 MOVE                             R11 R3
       33 SETLIST                          R7 R8 4 [1]
       35 CALL                             R5 2 0
       36 NEWTABLE                         R6 0 0
       38 DUPTABLE                         R7 K10 [{"__index"}]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R8 R7 K9 ["__index"]
       43 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       45 GETIMPORT                        R5 K12 [setmetatable]
       47 CALL                             R5 2 1
       48 NEWTABLE                         R6 0 0
       50 MOVE                             R7 R1
       51 LOADNIL                          R8
       52 LOADNIL                          R9
       53 FORGPREP                         R7
       54 GETTABLEKS                       R12 R0 K7 ["interactable"]
       56 JUMPIFNOT                        R12 ; [+10]
       57 GETTABLEKS                       R12 R11 K13 ["badgeWhen"]
       59 JUMPIFNOT                        R12 ; [+7]
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R12 R12 K14 ["evaluateValidation"]
       63 GETTABLEKS                       R13 R11 K13 ["badgeWhen"]
       65 MOVE                             R14 R5
       66 CALL                             R12 2 1
       67 GETTABLEKS                       R13 R11 K15 ["text"]
       69 JUMPIF                           R13 ; [+2]
       70 GETTABLEKS                       R13 R11 K4 ["id"]
       72 JUMPIFNOT                        R12 ; [+4]
       73 MOVE                             R15 R13
       74 LOADK                            R16 K16 ["  ⚠"]
       75 CONCAT                           R14 R15 R16
       76 JUMP                             ; [+1]
       77 MOVE                             R14 R13
       78 DUPTABLE                         R17 K17 [{"id", "text"}]
       79 GETTABLEKS                       R18 R11 K4 ["id"]
       81 SETTABLEKS                       R18 R17 K4 ["id"]
       83 SETTABLEKS                       R14 R17 K15 ["text"]
       85 FASTCALL2                        TABLE_INSERT R6 R17 ; [+4]
       87 MOVE                             R16 R6
       88 GETIMPORT                        R15 K20 [table.insert]
       90 CALL                             R15 2 0
       91 FORGLOOP                         R7 2 ; [-38]
       93 GETUPVAL                         R7 0
       94 GETTABLEKS                       R7 R7 K21 ["useCallback"]
       96 NEWCLOSURE                       R8 P2
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R9 0 2
      100 GETTABLEKS                       R10 R0 K7 ["interactable"]
      102 GETTABLEKS                       R11 R0 K8 ["setValue"]
      104 SETLIST                          R9 R10 2 [1]
      106 CALL                             R7 2 1
      107 GETUPVAL                         R8 2
      108 GETUPVAL                         R9 3
      109 DUPTABLE                         R10 K25 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      110 GETTABLEKS                       R11 R0 K24 ["LayoutOrder"]
      112 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
      114 DUPTABLE                         R11 K27 [{"Control"}]
      115 GETUPVAL                         R12 2
      116 GETUPVAL                         R13 4
      117 DUPTABLE                         R14 K31 [{"segments", "value", "onActivated", "size"}]
      118 SETTABLEKS                       R6 R14 K28 ["segments"]
      120 SETTABLEKS                       R4 R14 K3 ["value"]
      122 SETTABLEKS                       R7 R14 K29 ["onActivated"]
      124 GETUPVAL                         R15 5
      125 GETTABLEKS                       R15 R15 K32 ["Enums"]
      127 GETTABLEKS                       R15 R15 K33 ["InputSize"]
      129 GETTABLEKS                       R15 R15 K34 ["Small"]
      131 SETTABLEKS                       R15 R14 K30 ["size"]
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K26 ["Control"]
      136 CALL                             R8 3 -1
      137 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K9 ["PropertyRowTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Util"]
       34 GETTABLEKS                       R6 R6 K11 ["AskInput"]
       36 GETTABLEKS                       R6 R6 K12 ["Validation"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R2 K13 ["SegmentedControl"]
       41 GETTABLEKS                       R7 R2 K14 ["View"]
       43 GETTABLEKS                       R8 R3 K15 ["createElement"]
       45 DUPCLOSURE                       R9 K16 [PROTO_3]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R2
       52 RETURN                           R9 1
