PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        9 LOADK                            R3 K1 ["Somehow, textInput is nil"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K4 ["focus"]
       15 CALL                             R1 0 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SearchBar"]
        2 LOADK                            R3 K1 ["PlaceholderText"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 1
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       18 DUPCLOSURE                       R4 K3 [PROTO_1]
       19 CAPTURE                          UPVAL U2
       20 NEWTABLE                         R5 0 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K4 ["locale"]
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 3
       29 GETUPVAL                         R5 4
       30 DUPTABLE                         R6 K9 [{["tag"] = "row align-y-center gap-xsmall padding-x-small radius-circle bg-action-standard", ["LayoutOrder"], ["Size"]}]
       31 GETTABLEKS                       R7 R0 K10 ["layoutOrder"]
       33 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       35 GETTABLEKS                       R7 R0 K11 ["size"]
       37 SETTABLEKS                       R7 R6 K8 ["Size"]
       39 DUPTABLE                         R7 K14 [{"SearchIcon", "TextBoxWrapper"}]
       40 GETUPVAL                         R8 3
       41 GETUPVAL                         R9 5
       42 DUPTABLE                         R10 K16 [{"LayoutOrder", "name", "size"}]
       43 MOVE                             R11 R2
       44 CALL                             R11 0 1
       45 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       47 GETUPVAL                         R11 6
       48 GETTABLEKS                       R11 R11 K17 ["Enums"]
       50 GETTABLEKS                       R11 R11 K18 ["IconName"]
       52 GETTABLEKS                       R11 R11 K19 ["MagnifyingGlass"]
       54 SETTABLEKS                       R11 R10 K15 ["name"]
       56 GETUPVAL                         R11 6
       57 GETTABLEKS                       R11 R11 K17 ["Enums"]
       59 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       61 GETTABLEKS                       R11 R11 K21 ["XSmall"]
       63 SETTABLEKS                       R11 R10 K11 ["size"]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K12 ["SearchIcon"]
       68 GETUPVAL                         R8 3
       69 GETUPVAL                         R9 4
       70 DUPTABLE                         R10 K23 [{["LayoutOrder"], ["tag"] = "fill size-full clip"}]
       71 MOVE                             R11 R2
       72 CALL                             R11 0 1
       73 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       75 DUPTABLE                         R11 K25 [{"TextBox"}]
       76 GETUPVAL                         R12 3
       77 GETUPVAL                         R13 7
       78 DUPTABLE                         R14 K34 [{["variant"], ["label"] = "", ["text"] = "", ["placeholder"], ["width"], ["size"], ["textBoxRef"], ["onChanged"]}]
       79 GETUPVAL                         R15 6
       80 GETTABLEKS                       R15 R15 K17 ["Enums"]
       82 GETTABLEKS                       R15 R15 K35 ["InputVariant"]
       84 GETTABLEKS                       R15 R15 K36 ["Utility"]
       86 SETTABLEKS                       R15 R14 K26 ["variant"]
       88 SETTABLEKS                       R3 R14 K30 ["placeholder"]
       90 GETIMPORT                        R15 K39 [UDim.new]
       92 LOADN                            R16 1
       93 LOADN                            R17 0
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K31 ["width"]
       97 GETUPVAL                         R15 6
       98 GETTABLEKS                       R15 R15 K17 ["Enums"]
      100 GETTABLEKS                       R15 R15 K20 ["InputSize"]
      102 GETTABLEKS                       R15 R15 K21 ["XSmall"]
      104 SETTABLEKS                       R15 R14 K11 ["size"]
      106 SETTABLEKS                       R1 R14 K32 ["textBoxRef"]
      108 GETTABLEKS                       R15 R0 K40 ["onTextChanged"]
      110 SETTABLEKS                       R15 R14 K33 ["onChanged"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K24 ["TextBox"]
      115 CALL                             R8 3 1
      116 SETTABLEKS                       R8 R7 K13 ["TextBoxWrapper"]
      118 CALL                             R4 3 -1
      119 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["Foundation"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R2 K9 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R2 K10 ["ReactUtils"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R1 K11 ["Resources"]
       34 GETTABLEKS                       R7 R7 K12 ["Localization"]
       36 GETTABLEKS                       R7 R7 K13 ["Translator"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R3 K14 ["Icon"]
       41 GETTABLEKS                       R8 R3 K15 ["TextInput"]
       43 GETTABLEKS                       R9 R3 K16 ["View"]
       45 GETTABLEKS                       R10 R5 K17 ["createNextOrder"]
       47 GETTABLEKS                       R11 R4 K18 ["createElement"]
       49 DUPCLOSURE                       R12 K19 [PROTO_2]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R8
       58 RETURN                           R12 1
