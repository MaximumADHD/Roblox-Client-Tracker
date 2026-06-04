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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["AssetUploadResultFooter is only supported when FFlagToolboxAssetConfigFoundationMigration is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["Localization"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["new"]
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R5 R0 K5 ["primaryButtonText"]
       17 JUMPIFNOTEQKNIL                  R5 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 GETTABLEKS                       R5 R0 K6 ["showCloseLink"]
       23 GETTABLEKS                       R6 R0 K7 ["showBackLink"]
       25 CALL                             R3 3 1
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K8 ["createElement"]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K9 ["View"]
       32 DUPTABLE                         R6 K14 [{"tag", "AutomaticSize", "Position", "Size"}]
       33 LOADK                            R7 K15 ["col align-x-center gap-small"]
       34 SETTABLEKS                       R7 R6 K10 ["tag"]
       36 GETIMPORT                        R7 K18 [Enum.AutomaticSize.Y]
       38 SETTABLEKS                       R7 R6 K11 ["AutomaticSize"]
       40 GETIMPORT                        R7 K20 [UDim2.new]
       42 LOADN                            R8 0
       43 LOADN                            R9 0
       44 LOADN                            R10 1
       45 MINUS                            R11 R3
       46 CALL                             R7 4 1
       47 SETTABLEKS                       R7 R6 K12 ["Position"]
       49 GETIMPORT                        R7 K20 [UDim2.new]
       51 LOADN                            R8 1
       52 LOADN                            R9 0
       53 LOADN                            R10 0
       54 LOADN                            R11 0
       55 CALL                             R7 4 1
       56 SETTABLEKS                       R7 R6 K13 ["Size"]
       58 DUPTABLE                         R7 K24 [{"PrimaryButton", "CloseLink", "BackLink"}]
       59 GETTABLEKS                       R9 R0 K5 ["primaryButtonText"]
       61 JUMPIFNOT                        R9 ; [+29]
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R8 R8 K8 ["createElement"]
       65 GETUPVAL                         R9 4
       66 GETTABLEKS                       R9 R9 K25 ["Button"]
       68 DUPTABLE                         R10 K30 [{"text", "onActivated", "size", "LayoutOrder"}]
       69 GETTABLEKS                       R11 R0 K5 ["primaryButtonText"]
       71 SETTABLEKS                       R11 R10 K26 ["text"]
       73 GETTABLEKS                       R11 R0 K31 ["onPrimaryButtonActivated"]
       75 SETTABLEKS                       R11 R10 K27 ["onActivated"]
       77 GETUPVAL                         R11 5
       78 GETTABLEKS                       R11 R11 K32 ["InputSize"]
       80 GETTABLEKS                       R11 R11 K33 ["Medium"]
       82 SETTABLEKS                       R11 R10 K28 ["size"]
       84 NAMECALL                         R11 R2 K34 ["getNextOrder"]
       86 CALL                             R11 1 1
       87 SETTABLEKS                       R11 R10 K29 ["LayoutOrder"]
       89 CALL                             R8 2 1
       90 JUMPIF                           R8 ; [+1]
       91 LOADNIL                          R8
       92 SETTABLEKS                       R8 R7 K21 ["PrimaryButton"]
       94 GETTABLEKS                       R9 R0 K6 ["showCloseLink"]
       96 JUMPIFNOT                        R9 ; [+39]
       97 GETUPVAL                         R8 3
       98 GETTABLEKS                       R8 R8 K8 ["createElement"]
      100 GETUPVAL                         R9 4
      101 GETTABLEKS                       R9 R9 K25 ["Button"]
      103 DUPTABLE                         R10 K36 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      104 LOADK                            R13 K37 ["AssetUploadResult"]
      105 LOADK                            R14 K38 ["Close"]
      106 NAMECALL                         R11 R1 K39 ["getText"]
      108 CALL                             R11 3 1
      109 SETTABLEKS                       R11 R10 K26 ["text"]
      111 GETUPVAL                         R11 5
      112 GETTABLEKS                       R11 R11 K40 ["ButtonVariant"]
      114 GETTABLEKS                       R11 R11 K41 ["Link"]
      116 SETTABLEKS                       R11 R10 K35 ["variant"]
      118 GETTABLEKS                       R11 R0 K42 ["onClose"]
      120 SETTABLEKS                       R11 R10 K27 ["onActivated"]
      122 GETUPVAL                         R11 5
      123 GETTABLEKS                       R11 R11 K32 ["InputSize"]
      125 GETTABLEKS                       R11 R11 K43 ["Small"]
      127 SETTABLEKS                       R11 R10 K28 ["size"]
      129 NAMECALL                         R11 R2 K34 ["getNextOrder"]
      131 CALL                             R11 1 1
      132 SETTABLEKS                       R11 R10 K29 ["LayoutOrder"]
      134 CALL                             R8 2 1
      135 JUMPIF                           R8 ; [+1]
      136 LOADNIL                          R8
      137 SETTABLEKS                       R8 R7 K22 ["CloseLink"]
      139 GETTABLEKS                       R9 R0 K7 ["showBackLink"]
      141 JUMPIFNOT                        R9 ; [+39]
      142 GETUPVAL                         R8 3
      143 GETTABLEKS                       R8 R8 K8 ["createElement"]
      145 GETUPVAL                         R9 4
      146 GETTABLEKS                       R9 R9 K25 ["Button"]
      148 DUPTABLE                         R10 K36 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      149 LOADK                            R13 K37 ["AssetUploadResult"]
      150 LOADK                            R14 K44 ["Back"]
      151 NAMECALL                         R11 R1 K39 ["getText"]
      153 CALL                             R11 3 1
      154 SETTABLEKS                       R11 R10 K26 ["text"]
      156 GETUPVAL                         R11 5
      157 GETTABLEKS                       R11 R11 K40 ["ButtonVariant"]
      159 GETTABLEKS                       R11 R11 K41 ["Link"]
      161 SETTABLEKS                       R11 R10 K35 ["variant"]
      163 GETTABLEKS                       R11 R0 K45 ["onGoToNextScreen"]
      165 SETTABLEKS                       R11 R10 K27 ["onActivated"]
      167 GETUPVAL                         R11 5
      168 GETTABLEKS                       R11 R11 K32 ["InputSize"]
      170 GETTABLEKS                       R11 R11 K43 ["Small"]
      172 SETTABLEKS                       R11 R10 K28 ["size"]
      174 NAMECALL                         R11 R2 K34 ["getNextOrder"]
      176 CALL                             R11 1 1
      177 SETTABLEKS                       R11 R10 K29 ["LayoutOrder"]
      179 CALL                             R8 2 1
      180 JUMPIF                           R8 ; [+1]
      181 LOADNIL                          R8
      182 SETTABLEKS                       R8 R7 K23 ["BackLink"]
      184 CALL                             R4 3 -1
      185 RETURN                           R4 -1

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
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K12 ["Src"]
       38 GETTABLEKS                       R8 R8 K13 ["Flags"]
       40 GETTABLEKS                       R8 R8 K14 ["getFFlagToolboxAssetConfigFoundationMigration"]
       42 CALL                             R7 1 1
       43 DUPCLOSURE                       R8 K15 [PROTO_0]
       44 DUPCLOSURE                       R9 K16 [PROTO_1]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 RETURN                           R9 1
