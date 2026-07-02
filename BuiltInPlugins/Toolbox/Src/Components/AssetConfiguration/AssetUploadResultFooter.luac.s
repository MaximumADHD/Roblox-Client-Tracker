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
       32 DUPTABLE                         R6 K15 [{["tag"] = "col align-x-center gap-small", ["AutomaticSize"], ["Position"], ["Size"]}]
       33 GETIMPORT                        R7 K18 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R7 R6 K12 ["AutomaticSize"]
       37 GETIMPORT                        R7 K20 [UDim2.new]
       39 LOADN                            R8 0
       40 LOADN                            R9 0
       41 LOADN                            R10 1
       42 MINUS                            R11 R3
       43 CALL                             R7 4 1
       44 SETTABLEKS                       R7 R6 K13 ["Position"]
       46 GETIMPORT                        R7 K20 [UDim2.new]
       48 LOADN                            R8 1
       49 LOADN                            R9 0
       50 LOADN                            R10 0
       51 LOADN                            R11 0
       52 CALL                             R7 4 1
       53 SETTABLEKS                       R7 R6 K14 ["Size"]
       55 DUPTABLE                         R7 K24 [{"PrimaryButton", "CloseLink", "BackLink"}]
       56 GETTABLEKS                       R9 R0 K5 ["primaryButtonText"]
       58 JUMPIFNOT                        R9 ; [+29]
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R8 R8 K8 ["createElement"]
       62 GETUPVAL                         R9 4
       63 GETTABLEKS                       R9 R9 K25 ["Button"]
       65 DUPTABLE                         R10 K30 [{"text", "onActivated", "size", "LayoutOrder"}]
       66 GETTABLEKS                       R11 R0 K5 ["primaryButtonText"]
       68 SETTABLEKS                       R11 R10 K26 ["text"]
       70 GETTABLEKS                       R11 R0 K31 ["onPrimaryButtonActivated"]
       72 SETTABLEKS                       R11 R10 K27 ["onActivated"]
       74 GETUPVAL                         R11 5
       75 GETTABLEKS                       R11 R11 K32 ["InputSize"]
       77 GETTABLEKS                       R11 R11 K33 ["Medium"]
       79 SETTABLEKS                       R11 R10 K28 ["size"]
       81 NAMECALL                         R11 R2 K34 ["getNextOrder"]
       83 CALL                             R11 1 1
       84 SETTABLEKS                       R11 R10 K29 ["LayoutOrder"]
       86 CALL                             R8 2 1
       87 JUMPIF                           R8 ; [+1]
       88 LOADNIL                          R8
       89 SETTABLEKS                       R8 R7 K21 ["PrimaryButton"]
       91 GETTABLEKS                       R9 R0 K6 ["showCloseLink"]
       93 JUMPIFNOT                        R9 ; [+39]
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R8 R8 K8 ["createElement"]
       97 GETUPVAL                         R9 4
       98 GETTABLEKS                       R9 R9 K25 ["Button"]
      100 DUPTABLE                         R10 K36 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      101 LOADK                            R13 K37 ["AssetUploadResult"]
      102 LOADK                            R14 K38 ["Close"]
      103 NAMECALL                         R11 R1 K39 ["getText"]
      105 CALL                             R11 3 1
      106 SETTABLEKS                       R11 R10 K26 ["text"]
      108 GETUPVAL                         R11 5
      109 GETTABLEKS                       R11 R11 K40 ["ButtonVariant"]
      111 GETTABLEKS                       R11 R11 K41 ["Link"]
      113 SETTABLEKS                       R11 R10 K35 ["variant"]
      115 GETTABLEKS                       R11 R0 K42 ["onClose"]
      117 SETTABLEKS                       R11 R10 K27 ["onActivated"]
      119 GETUPVAL                         R11 5
      120 GETTABLEKS                       R11 R11 K32 ["InputSize"]
      122 GETTABLEKS                       R11 R11 K43 ["Small"]
      124 SETTABLEKS                       R11 R10 K28 ["size"]
      126 NAMECALL                         R11 R2 K34 ["getNextOrder"]
      128 CALL                             R11 1 1
      129 SETTABLEKS                       R11 R10 K29 ["LayoutOrder"]
      131 CALL                             R8 2 1
      132 JUMPIF                           R8 ; [+1]
      133 LOADNIL                          R8
      134 SETTABLEKS                       R8 R7 K22 ["CloseLink"]
      136 GETTABLEKS                       R9 R0 K7 ["showBackLink"]
      138 JUMPIFNOT                        R9 ; [+39]
      139 GETUPVAL                         R8 3
      140 GETTABLEKS                       R8 R8 K8 ["createElement"]
      142 GETUPVAL                         R9 4
      143 GETTABLEKS                       R9 R9 K25 ["Button"]
      145 DUPTABLE                         R10 K36 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      146 LOADK                            R13 K37 ["AssetUploadResult"]
      147 LOADK                            R14 K44 ["Back"]
      148 NAMECALL                         R11 R1 K39 ["getText"]
      150 CALL                             R11 3 1
      151 SETTABLEKS                       R11 R10 K26 ["text"]
      153 GETUPVAL                         R11 5
      154 GETTABLEKS                       R11 R11 K40 ["ButtonVariant"]
      156 GETTABLEKS                       R11 R11 K41 ["Link"]
      158 SETTABLEKS                       R11 R10 K35 ["variant"]
      160 GETTABLEKS                       R11 R0 K45 ["onGoToNextScreen"]
      162 SETTABLEKS                       R11 R10 K27 ["onActivated"]
      164 GETUPVAL                         R11 5
      165 GETTABLEKS                       R11 R11 K32 ["InputSize"]
      167 GETTABLEKS                       R11 R11 K43 ["Small"]
      169 SETTABLEKS                       R11 R10 K28 ["size"]
      171 NAMECALL                         R11 R2 K34 ["getNextOrder"]
      173 CALL                             R11 1 1
      174 SETTABLEKS                       R11 R10 K29 ["LayoutOrder"]
      176 CALL                             R8 2 1
      177 JUMPIF                           R8 ; [+1]
      178 LOADNIL                          R8
      179 SETTABLEKS                       R8 R7 K23 ["BackLink"]
      181 CALL                             R4 3 -1
      182 RETURN                           R4 -1

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
