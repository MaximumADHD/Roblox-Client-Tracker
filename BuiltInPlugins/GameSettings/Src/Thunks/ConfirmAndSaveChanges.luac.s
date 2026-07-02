PROTO_0:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Settings"]
        5 GETTABLEKS                       R1 R1 K3 ["Warnings"]
        7 CALL                             R0 1 3
        8 FORGPREP_NEXT                    R0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K4 ["showDialog"]
       12 GETUPVAL                         R6 2
       13 GETUPVAL                         R8 3
       14 GETTABLE                         R7 R8 R4
       15 CALL                             R5 2 1
       16 NAMECALL                         R5 R5 K5 ["await"]
       18 CALL                             R5 1 1
       19 JUMPIF                           R5 ; [+2]
       20 GETUPVAL                         R5 4
       21 CALL                             R5 0 0
       22 FORGLOOP                         R0 2 ; [-14]
       24 GETUPVAL                         R0 5
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["showDialog"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R1 2 1
        6 DUPCLOSURE                       R3 K1 [PROTO_2]
        7 NAMECALL                         R1 R1 K2 ["catch"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["dispatch"]
        5 CALL                             R0 -1 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 NAMECALL                         R0 R0 K1 ["catch"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_5:
        0 RETURN                           R0 1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 DUPTABLE                         R3 K3 [{"isActive", "universeAvatarType"}]
        5 DUPTABLE                         R4 K8 [{"Title", "Header", "Description", "Buttons"}]
        6 LOADK                            R7 K9 ["General"]
        7 LOADK                            R8 K10 ["PrivateDialogHeader"]
        8 NAMECALL                         R5 R2 K11 ["getText"]
       10 CALL                             R5 3 1
       11 SETTABLEKS                       R5 R4 K4 ["Title"]
       13 LOADK                            R7 K9 ["General"]
       14 LOADK                            R8 K12 ["PrivateDialogPrompt"]
       15 NAMECALL                         R5 R2 K11 ["getText"]
       17 CALL                             R5 3 1
       18 SETTABLEKS                       R5 R4 K5 ["Header"]
       20 LOADK                            R7 K9 ["General"]
       21 LOADK                            R8 K13 ["PrivateDialogBody"]
       22 NAMECALL                         R5 R2 K11 ["getText"]
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R4 K6 ["Description"]
       27 NEWTABLE                         R5 0 2
       29 LOADK                            R8 K9 ["General"]
       30 LOADK                            R9 K14 ["ButtonCancel"]
       31 NAMECALL                         R6 R2 K11 ["getText"]
       33 CALL                             R6 3 1
       34 LOADK                            R9 K9 ["General"]
       35 LOADK                            R10 K15 ["ButtonSave"]
       36 NAMECALL                         R7 R2 K11 ["getText"]
       38 CALL                             R7 3 -1
       39 SETLIST                          R5 R6 -1 [1]
       41 SETTABLEKS                       R5 R4 K7 ["Buttons"]
       43 SETTABLEKS                       R4 R3 K1 ["isActive"]
       45 DUPTABLE                         R4 K8 [{"Title", "Header", "Description", "Buttons"}]
       46 LOADK                            R7 K9 ["General"]
       47 LOADK                            R8 K16 ["AvatarDialogHeader"]
       48 NAMECALL                         R5 R2 K11 ["getText"]
       50 CALL                             R5 3 1
       51 SETTABLEKS                       R5 R4 K4 ["Title"]
       53 LOADK                            R7 K9 ["General"]
       54 LOADK                            R8 K17 ["AvatarDialogPrompt"]
       55 NAMECALL                         R5 R2 K11 ["getText"]
       57 CALL                             R5 3 1
       58 SETTABLEKS                       R5 R4 K5 ["Header"]
       60 LOADK                            R7 K9 ["General"]
       61 LOADK                            R8 K18 ["AvatarDialogBody"]
       62 NAMECALL                         R5 R2 K11 ["getText"]
       64 CALL                             R5 3 1
       65 SETTABLEKS                       R5 R4 K6 ["Description"]
       67 NEWTABLE                         R5 0 2
       69 LOADK                            R8 K9 ["General"]
       70 LOADK                            R9 K19 ["ReplyNo"]
       71 NAMECALL                         R6 R2 K11 ["getText"]
       73 CALL                             R6 3 1
       74 LOADK                            R9 K9 ["General"]
       75 LOADK                            R10 K20 ["ReplyYes"]
       76 NAMECALL                         R7 R2 K11 ["getText"]
       78 CALL                             R7 3 -1
       79 SETLIST                          R5 R6 -1 [1]
       81 SETTABLEKS                       R5 R4 K7 ["Buttons"]
       83 SETTABLEKS                       R4 R3 K2 ["universeAvatarType"]
       85 DUPTABLE                         R4 K22 [{"Size", "Title", "Header", "Buttons"}]
       86 GETIMPORT                        R5 K25 [Vector2.new]
       88 LOADN                            R6 343
       89 LOADN                            R7 145
       90 CALL                             R5 2 1
       91 SETTABLEKS                       R5 R4 K21 ["Size"]
       93 LOADK                            R7 K9 ["General"]
       94 LOADK                            R8 K26 ["ErrorsOnSaveHeader"]
       95 NAMECALL                         R5 R2 K11 ["getText"]
       97 CALL                             R5 3 1
       98 SETTABLEKS                       R5 R4 K4 ["Title"]
      100 GETUPVAL                         R6 1
      101 JUMPIFNOT                        R6 ; [+6]
      102 LOADK                            R7 K9 ["General"]
      103 LOADK                            R8 K27 ["ErrorsOnSaveBodyExp"]
      104 NAMECALL                         R5 R2 K11 ["getText"]
      106 CALL                             R5 3 1
      107 JUMP                             ; [+5]
      108 LOADK                            R7 K9 ["General"]
      109 LOADK                            R8 K28 ["ErrorsOnSaveBody"]
      110 NAMECALL                         R5 R2 K11 ["getText"]
      112 CALL                             R5 3 1
      113 SETTABLEKS                       R5 R4 K5 ["Header"]
      115 NEWTABLE                         R5 0 1
      117 LOADK                            R8 K9 ["General"]
      118 LOADK                            R9 K29 ["ReplyOK"]
      119 NAMECALL                         R6 R2 K11 ["getText"]
      121 CALL                             R6 3 -1
      122 SETLIST                          R5 R6 -1 [1]
      124 SETTABLEKS                       R5 R4 K7 ["Buttons"]
      126 GETUPVAL                         R5 2
      127 GETTABLEKS                       R5 R5 K24 ["new"]
      129 NEWCLOSURE                       R6 P0
      130 CAPTURE                          VAL R1
      131 CAPTURE                          UPVAL U3
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          VAL R3
      134 CALL                             R5 1 1
      135 NEWCLOSURE                       R7 P1
      136 CAPTURE                          VAL R0
      137 CAPTURE                          UPVAL U5
      138 CAPTURE                          UPVAL U3
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          VAL R4
      141 NAMECALL                         R5 R5 K30 ["andThen"]
      143 CALL                             R5 2 1
      144 DUPCLOSURE                       R7 K31 [PROTO_5]
      145 NAMECALL                         R5 R5 K30 ["andThen"]
      147 CALL                             R5 2 -1
      148 RETURN                           R5 -1

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R2 K1 [script]
       13 GETTABLEKS                       R2 R2 K2 ["Parent"]
       15 GETTABLEKS                       R2 R2 K2 ["Parent"]
       17 GETTABLEKS                       R2 R2 K5 ["Flags"]
       19 GETTABLEKS                       R2 R2 K6 ["getFFlagGameSettingsGameToExperience"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R3 R0 K7 ["Src"]
       26 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       28 GETTABLEKS                       R3 R3 K9 ["SaveChanges"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R4 R0 K7 ["Src"]
       35 GETTABLEKS                       R4 R4 K10 ["Components"]
       37 GETTABLEKS                       R4 R4 K11 ["Dialog"]
       39 GETTABLEKS                       R4 R4 K12 ["WarningDialog"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K4 [require]
       44 GETTABLEKS                       R5 R0 K7 ["Src"]
       46 GETTABLEKS                       R5 R5 K10 ["Components"]
       48 GETTABLEKS                       R5 R5 K11 ["Dialog"]
       50 GETTABLEKS                       R5 R5 K13 ["SimpleDialog"]
       52 CALL                             R4 1 1
       53 GETIMPORT                        R5 K4 [require]
       55 GETTABLEKS                       R6 R0 K14 ["Packages"]
       57 GETTABLEKS                       R6 R6 K15 ["Framework"]
       59 CALL                             R5 1 1
       60 GETTABLEKS                       R6 R5 K16 ["Util"]
       62 GETTABLEKS                       R7 R6 K17 ["Promise"]
       64 DUPCLOSURE                       R8 K18 [PROTO_7]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 RETURN                           R8 1
