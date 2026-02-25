PROTO_0:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["characterMetadataLoadedVersion"]
        5 LOADN                            R3 0
        6 JUMPIFNOTLT                      R3 R2 ; [+22]
        8 LOADB                            R1 1
        9 GETIMPORT                        R2 K3 [next]
       11 GETTABLEKS                       R4 R0 K0 ["props"]
       13 GETTABLEKS                       R3 R4 K4 ["characters"]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKNIL                  R2 ; [+12]
       18 GETIMPORT                        R2 K3 [next]
       20 GETTABLEKS                       R4 R0 K0 ["props"]
       22 GETTABLEKS                       R3 R4 K5 ["convertedCharacters"]
       24 CALL                             R2 1 1
       25 JUMPIFNOTEQKNIL                  R2 ; [+2]
       27 LOADB                            R1 0 +1
       28 LOADB                            R1 1
       29 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["characterMetadataLoadedVersion"]
        4 JUMPIFNOTEQKN                    R1 K2 [0] ; [+10]
        6 GETTABLEKS                       R2 R0 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K3 ["loadCharacterMetadata"]
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R2 R3 K4 ["Analytics"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["new"]
        9 CALL                             R4 0 1
       10 NAMECALL                         R5 R0 K4 ["hasCharacters"]
       12 CALL                             R5 1 1
       13 JUMPIF                           R5 ; [+24]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K5 ["createElement"]
       17 GETUPVAL                         R6 2
       18 NEWTABLE                         R7 0 0
       20 DUPTABLE                         R8 K7 [{"Label"}]
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R9 R10 K5 ["createElement"]
       24 GETUPVAL                         R10 3
       25 DUPTABLE                         R11 K9 [{"Text"}]
       26 LOADK                            R14 K10 ["CharacterConversion"]
       27 LOADK                            R15 K11 ["NoCharacters"]
       28 NAMECALL                         R12 R3 K12 ["getText"]
       30 CALL                             R12 3 1
       31 SETTABLEKS                       R12 R11 K8 ["Text"]
       33 CALL                             R9 2 1
       34 SETTABLEKS                       R9 R8 K6 ["Label"]
       36 CALL                             R5 3 -1
       37 RETURN                           R5 -1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R5 R6 K5 ["createElement"]
       41 GETUPVAL                         R6 2
       42 DUPTABLE                         R7 K16 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
       43 GETIMPORT                        R8 K20 [Enum.FillDirection.Vertical]
       45 SETTABLEKS                       R8 R7 K13 ["Layout"]
       47 GETIMPORT                        R8 K22 [Enum.HorizontalAlignment.Left]
       49 SETTABLEKS                       R8 R7 K14 ["HorizontalAlignment"]
       51 GETIMPORT                        R8 K24 [Enum.VerticalAlignment.Top]
       53 SETTABLEKS                       R8 R7 K15 ["VerticalAlignment"]
       55 DUPTABLE                         R8 K27 [{"MainView", "Footer"}]
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R9 R10 K5 ["createElement"]
       59 GETUPVAL                         R10 4
       60 DUPTABLE                         R11 K31 [{"OnResetPlugin", "LayoutOrder", "Size"}]
       61 GETTABLEKS                       R12 R1 K28 ["OnResetPlugin"]
       63 SETTABLEKS                       R12 R11 K28 ["OnResetPlugin"]
       65 NAMECALL                         R12 R4 K32 ["getNextOrder"]
       67 CALL                             R12 1 1
       68 SETTABLEKS                       R12 R11 K29 ["LayoutOrder"]
       70 GETIMPORT                        R12 K34 [UDim2.new]
       72 LOADN                            R13 1
       73 LOADN                            R14 0
       74 LOADN                            R15 1
       75 GETTABLEKS                       R17 R2 K35 ["FooterHeight"]
       77 MINUS                            R16 R17
       78 CALL                             R12 4 1
       79 SETTABLEKS                       R12 R11 K30 ["Size"]
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K25 ["MainView"]
       84 GETUPVAL                         R10 1
       85 GETTABLEKS                       R9 R10 K5 ["createElement"]
       87 GETUPVAL                         R10 5
       88 DUPTABLE                         R11 K36 [{"LayoutOrder", "Size"}]
       89 NAMECALL                         R12 R4 K32 ["getNextOrder"]
       91 CALL                             R12 1 1
       92 SETTABLEKS                       R12 R11 K29 ["LayoutOrder"]
       94 GETIMPORT                        R12 K34 [UDim2.new]
       96 LOADN                            R13 1
       97 LOADN                            R14 0
       98 LOADN                            R15 0
       99 GETTABLEKS                       R16 R2 K35 ["FooterHeight"]
      101 CALL                             R12 4 1
      102 SETTABLEKS                       R12 R11 K30 ["Size"]
      104 CALL                             R9 2 1
      105 SETTABLEKS                       R9 R8 K26 ["Footer"]
      107 CALL                             R5 3 -1
      108 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R2 K3 [{"characterMetadataLoadedVersion", "characters", "convertedCharacters"}]
        1 GETTABLEKS                       R4 R0 K4 ["CharacterConversion"]
        3 GETTABLEKS                       R3 R4 K0 ["characterMetadataLoadedVersion"]
        5 SETTABLEKS                       R3 R2 K0 ["characterMetadataLoadedVersion"]
        7 GETTABLEKS                       R4 R0 K4 ["CharacterConversion"]
        9 GETTABLEKS                       R3 R4 K1 ["characters"]
       11 SETTABLEKS                       R3 R2 K1 ["characters"]
       13 GETTABLEKS                       R4 R0 K4 ["CharacterConversion"]
       15 GETTABLEKS                       R3 R4 K2 ["convertedCharacters"]
       17 SETTABLEKS                       R3 R2 K2 ["convertedCharacters"]
       19 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"loadCharacterMetadata"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["loadCharacterMetadata"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["UI"]
       30 GETTABLEKS                       R5 R4 K11 ["Pane"]
       32 GETTABLEKS                       R6 R4 K12 ["TextLabel"]
       34 GETTABLEKS                       R8 R0 K13 ["Src"]
       36 GETTABLEKS                       R7 R8 K14 ["Components"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R10 R7 K15 ["CharacterConversion"]
       42 GETTABLEKS                       R9 R10 K16 ["Footer"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R11 R7 K15 ["CharacterConversion"]
       49 GETTABLEKS                       R10 R11 K17 ["MainView"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R13 R0 K13 ["Src"]
       56 GETTABLEKS                       R12 R13 K18 ["Thunks"]
       58 GETTABLEKS                       R11 R12 K19 ["LoadCharacterMetadata"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R1 K20 ["Util"]
       63 GETTABLEKS                       R12 R11 K21 ["LayoutOrderIterator"]
       65 GETTABLEKS                       R13 R2 K22 ["PureComponent"]
       67 LOADK                            R15 K23 ["CharacterConversionPane"]
       68 NAMECALL                         R13 R13 K24 ["extend"]
       70 CALL                             R13 2 1
       71 DUPCLOSURE                       R14 K25 [PROTO_0]
       72 SETTABLEKS                       R14 R13 K26 ["hasCharacters"]
       74 DUPCLOSURE                       R14 K27 [PROTO_1]
       75 SETTABLEKS                       R14 R13 K28 ["didMount"]
       77 DUPCLOSURE                       R14 K29 [PROTO_2]
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R8
       84 SETTABLEKS                       R14 R13 K30 ["render"]
       86 GETTABLEKS                       R15 R1 K31 ["ContextServices"]
       88 GETTABLEKS                       R14 R15 K32 ["withContext"]
       90 DUPTABLE                         R15 K36 [{"Analytics", "Stylizer", "Localization"}]
       91 GETTABLEKS                       R17 R1 K31 ["ContextServices"]
       93 GETTABLEKS                       R16 R17 K33 ["Analytics"]
       95 SETTABLEKS                       R16 R15 K33 ["Analytics"]
       97 GETTABLEKS                       R17 R1 K31 ["ContextServices"]
       99 GETTABLEKS                       R16 R17 K34 ["Stylizer"]
      101 SETTABLEKS                       R16 R15 K34 ["Stylizer"]
      103 GETTABLEKS                       R17 R1 K31 ["ContextServices"]
      105 GETTABLEKS                       R16 R17 K35 ["Localization"]
      107 SETTABLEKS                       R16 R15 K35 ["Localization"]
      109 CALL                             R14 1 1
      110 MOVE                             R15 R13
      111 CALL                             R14 1 1
      112 MOVE                             R13 R14
      113 DUPCLOSURE                       R14 K37 [PROTO_3]
      114 DUPCLOSURE                       R15 K38 [PROTO_5]
      115 CAPTURE                          VAL R10
      116 GETTABLEKS                       R16 R3 K39 ["connect"]
      118 MOVE                             R17 R14
      119 MOVE                             R18 R15
      120 CALL                             R16 2 1
      121 MOVE                             R17 R13
      122 CALL                             R16 1 -1
      123 RETURN                           R16 -1
