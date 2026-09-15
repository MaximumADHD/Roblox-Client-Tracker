PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFNOT                        R0 ; [+7]
        3 FASTCALL2K                       TABLE_INSERT R3 K0 ; [+5]
        5 MOVE                             R5 R3
        6 LOADK                            R6 K0 [40]
        7 GETIMPORT                        R4 K3 [table.insert]
        9 CALL                             R4 2 0
       10 JUMPIFNOT                        R1 ; [+7]
       11 FASTCALL2K                       TABLE_INSERT R3 K4 ; [+5]
       13 MOVE                             R5 R3
       14 LOADK                            R6 K4 [32]
       15 GETIMPORT                        R4 K3 [table.insert]
       17 CALL                             R4 2 0
       18 JUMPIFNOT                        R2 ; [+7]
       19 FASTCALL2K                       TABLE_INSERT R3 K4 ; [+5]
       21 MOVE                             R5 R3
       22 LOADK                            R6 K4 [32]
       23 GETIMPORT                        R4 K3 [table.insert]
       25 CALL                             R4 2 0
       26 LOADN                            R4 8
       27 GETIMPORT                        R5 K6 [ipairs]
       29 MOVE                             R6 R3
       30 CALL                             R5 1 3
       31 FORGPREP_INEXT                   R5
       32 ADD                              R4 R4 R9
       33 LENGTH                           R10 R3
       34 JUMPIFNOTLT                      R8 R10 ; [+2]
       36 ADDK                             R4 R4 K7 [8]
       37 FORGLOOP                         R5 2 [inext] ; [-6]
       39 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R5 R0 K2 ["primaryButtonText"]
        9 JUMPIFNOTEQKNIL                  R5 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 GETTABLEKS                       R5 R0 K3 ["showCloseLink"]
       15 GETTABLEKS                       R6 R0 K4 ["showBackLink"]
       17 CALL                             R3 3 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K5 ["createElement"]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K6 ["View"]
       24 DUPTABLE                         R6 K12 [{["tag"] = "col align-x-center gap-small", ["AutomaticSize"], ["Position"], ["Size"]}]
       25 GETIMPORT                        R7 K15 [Enum.AutomaticSize.Y]
       27 SETTABLEKS                       R7 R6 K9 ["AutomaticSize"]
       29 GETIMPORT                        R7 K17 [UDim2.new]
       31 LOADN                            R8 0
       32 LOADN                            R9 0
       33 LOADN                            R10 1
       34 MINUS                            R11 R3
       35 CALL                             R7 4 1
       36 SETTABLEKS                       R7 R6 K10 ["Position"]
       38 GETIMPORT                        R7 K17 [UDim2.new]
       40 LOADN                            R8 1
       41 LOADN                            R9 0
       42 LOADN                            R10 0
       43 LOADN                            R11 0
       44 CALL                             R7 4 1
       45 SETTABLEKS                       R7 R6 K11 ["Size"]
       47 DUPTABLE                         R7 K21 [{"PrimaryButton", "CloseLink", "BackLink"}]
       48 GETTABLEKS                       R9 R0 K2 ["primaryButtonText"]
       50 JUMPIFNOT                        R9 ; [+29]
       51 GETUPVAL                         R8 2
       52 GETTABLEKS                       R8 R8 K5 ["createElement"]
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R9 R9 K22 ["Button"]
       57 DUPTABLE                         R10 K27 [{"text", "onActivated", "size", "LayoutOrder"}]
       58 GETTABLEKS                       R11 R0 K2 ["primaryButtonText"]
       60 SETTABLEKS                       R11 R10 K23 ["text"]
       62 GETTABLEKS                       R11 R0 K28 ["onPrimaryButtonActivated"]
       64 SETTABLEKS                       R11 R10 K24 ["onActivated"]
       66 GETUPVAL                         R11 4
       67 GETTABLEKS                       R11 R11 K29 ["InputSize"]
       69 GETTABLEKS                       R11 R11 K30 ["Medium"]
       71 SETTABLEKS                       R11 R10 K25 ["size"]
       73 NAMECALL                         R11 R2 K31 ["getNextOrder"]
       75 CALL                             R11 1 1
       76 SETTABLEKS                       R11 R10 K26 ["LayoutOrder"]
       78 CALL                             R8 2 1
       79 JUMPIF                           R8 ; [+1]
       80 LOADNIL                          R8
       81 SETTABLEKS                       R8 R7 K18 ["PrimaryButton"]
       83 GETTABLEKS                       R9 R0 K3 ["showCloseLink"]
       85 JUMPIFNOT                        R9 ; [+39]
       86 GETUPVAL                         R8 2
       87 GETTABLEKS                       R8 R8 K5 ["createElement"]
       89 GETUPVAL                         R9 3
       90 GETTABLEKS                       R9 R9 K22 ["Button"]
       92 DUPTABLE                         R10 K33 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
       93 LOADK                            R13 K34 ["AssetUploadResult"]
       94 LOADK                            R14 K35 ["Close"]
       95 NAMECALL                         R11 R1 K36 ["getText"]
       97 CALL                             R11 3 1
       98 SETTABLEKS                       R11 R10 K23 ["text"]
      100 GETUPVAL                         R11 4
      101 GETTABLEKS                       R11 R11 K37 ["ButtonVariant"]
      103 GETTABLEKS                       R11 R11 K38 ["Link"]
      105 SETTABLEKS                       R11 R10 K32 ["variant"]
      107 GETTABLEKS                       R11 R0 K39 ["onClose"]
      109 SETTABLEKS                       R11 R10 K24 ["onActivated"]
      111 GETUPVAL                         R11 4
      112 GETTABLEKS                       R11 R11 K29 ["InputSize"]
      114 GETTABLEKS                       R11 R11 K40 ["Small"]
      116 SETTABLEKS                       R11 R10 K25 ["size"]
      118 NAMECALL                         R11 R2 K31 ["getNextOrder"]
      120 CALL                             R11 1 1
      121 SETTABLEKS                       R11 R10 K26 ["LayoutOrder"]
      123 CALL                             R8 2 1
      124 JUMPIF                           R8 ; [+1]
      125 LOADNIL                          R8
      126 SETTABLEKS                       R8 R7 K19 ["CloseLink"]
      128 GETTABLEKS                       R9 R0 K4 ["showBackLink"]
      130 JUMPIFNOT                        R9 ; [+39]
      131 GETUPVAL                         R8 2
      132 GETTABLEKS                       R8 R8 K5 ["createElement"]
      134 GETUPVAL                         R9 3
      135 GETTABLEKS                       R9 R9 K22 ["Button"]
      137 DUPTABLE                         R10 K33 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      138 LOADK                            R13 K34 ["AssetUploadResult"]
      139 LOADK                            R14 K41 ["Back"]
      140 NAMECALL                         R11 R1 K36 ["getText"]
      142 CALL                             R11 3 1
      143 SETTABLEKS                       R11 R10 K23 ["text"]
      145 GETUPVAL                         R11 4
      146 GETTABLEKS                       R11 R11 K37 ["ButtonVariant"]
      148 GETTABLEKS                       R11 R11 K38 ["Link"]
      150 SETTABLEKS                       R11 R10 K32 ["variant"]
      152 GETTABLEKS                       R11 R0 K42 ["onGoToNextScreen"]
      154 SETTABLEKS                       R11 R10 K24 ["onActivated"]
      156 GETUPVAL                         R11 4
      157 GETTABLEKS                       R11 R11 K29 ["InputSize"]
      159 GETTABLEKS                       R11 R11 K40 ["Small"]
      161 SETTABLEKS                       R11 R10 K25 ["size"]
      163 NAMECALL                         R11 R2 K31 ["getNextOrder"]
      165 CALL                             R11 1 1
      166 SETTABLEKS                       R11 R10 K26 ["LayoutOrder"]
      168 CALL                             R8 2 1
      169 JUMPIF                           R8 ; [+1]
      170 LOADNIL                          R8
      171 SETTABLEKS                       R8 R7 K20 ["BackLink"]
      173 CALL                             R4 3 -1
      174 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R1 K9 ["Framework"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R5 K10 ["Util"]
       32 GETTABLEKS                       R6 R6 K11 ["LayoutOrderIterator"]
       34 DUPCLOSURE                       R7 K12 [PROTO_0]
       35 DUPCLOSURE                       R8 K13 [PROTO_1]
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 RETURN                           R8 1
