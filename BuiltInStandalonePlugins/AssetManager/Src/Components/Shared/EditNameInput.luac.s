PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["focus"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["current"]
       13 GETTABLEKS                       R0 R0 K2 ["setSelectionStart"]
       15 LOADN                            R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemType"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["AssetType"]
        6 GETTABLEKS                       R1 R1 K2 ["Folder"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+5]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 3
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["ItemType"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["AssetType"]
        8 GETTABLEKS                       R1 R1 K2 ["Folder"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+9]
       12 LOADK                            R0 K3 ["Folder names cannot contain <b>%*</b> or end with a period."]
       13 GETUPVAL                         R2 3
       14 LOADK                            R3 K4 ["< > : \" / \\ | ? *"]
       15 CALL                             R2 1 1
       16 NAMECALL                         R0 R0 K5 ["format"]
       18 CALL                             R0 2 1
       19 RETURN                           R0 1
       20 LOADNIL                          R0
       21 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnComplete"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["OnComplete"]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R0
       10 CALL                             R1 3 0
       11 RETURN                           R0 0
       12 MOVE                             R1 R0
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
       16 GETIMPORT                        R3 K4 [Enum.KeyCode.Escape]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 JUMPIF                           R1 ; [+2]
       23 GETUPVAL                         R2 1
       24 JUMPIF                           R2 ; [+5]
       25 GETUPVAL                         R2 3
       26 NAMECALL                         R2 R2 K5 ["removeStagedItem"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K6 ["ItemType"]
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R3 R3 K7 ["AssetType"]
       36 GETTABLEKS                       R3 R3 K8 ["Folder"]
       38 JUMPIFNOTEQ                      R2 R3 ; [+10]
       40 GETUPVAL                         R2 3
       41 GETUPVAL                         R4 2
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K9 ["ItemPath"]
       45 NAMECALL                         R2 R2 K10 ["uploadStagedFolderPath"]
       47 CALL                             R2 3 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K6 ["ItemType"]
       52 GETUPVAL                         R3 4
       53 GETTABLEKS                       R3 R3 K7 ["AssetType"]
       55 GETTABLEKS                       R3 R3 K11 ["Place"]
       57 JUMPIFNOTEQ                      R2 R3 ; [+26]
       59 GETUPVAL                         R2 5
       60 CALL                             R2 0 1
       61 JUMPIFNOT                        R2 ; [+14]
       62 GETUPVAL                         R2 6
       63 GETUPVAL                         R3 2
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K9 ["ItemPath"]
       67 DUPTABLE                         R5 K14 [{"ItemsController", "Networking"}]
       68 GETUPVAL                         R6 3
       69 SETTABLEKS                       R6 R5 K12 ["ItemsController"]
       71 GETUPVAL                         R6 7
       72 SETTABLEKS                       R6 R5 K13 ["Networking"]
       74 CALL                             R2 3 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R2 3
       77 GETUPVAL                         R4 2
       78 GETUPVAL                         R5 0
       79 GETTABLEKS                       R5 R5 K9 ["ItemPath"]
       81 NAMECALL                         R2 R2 K15 ["renamePlace"]
       83 CALL                             R2 3 0
       84 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useRef"]
       11 LOADNIL                          R4
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K2 ["useState"]
       16 GETTABLEKS                       R5 R0 K3 ["InitialText"]
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K4 ["Hooks"]
       22 GETTABLEKS                       R6 R6 K5 ["useTokens"]
       24 CALL                             R6 0 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R9 0 0
       32 CALL                             R7 2 0
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R9 0 2
       43 MOVE                             R10 R4
       44 GETTABLEKS                       R11 R0 K8 ["ItemType"]
       46 SETLIST                          R9 R10 2 [1]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       52 NEWCLOSURE                       R9 P2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U6
       57 NEWTABLE                         R10 0 2
       59 MOVE                             R11 R7
       60 GETTABLEKS                       R12 R0 K8 ["ItemType"]
       62 SETLIST                          R10 R11 2 [1]
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       68 NEWCLOSURE                       R10 P3
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          VAL R2
       77 NEWTABLE                         R11 0 5
       79 MOVE                             R12 R4
       80 MOVE                             R13 R7
       81 GETTABLEKS                       R14 R0 K3 ["InitialText"]
       83 GETTABLEKS                       R15 R0 K10 ["ItemPath"]
       85 GETTABLEKS                       R16 R0 K8 ["ItemType"]
       87 SETLIST                          R11 R12 5 [1]
       89 CALL                             R9 2 1
       90 GETUPVAL                         R10 2
       91 GETTABLEKS                       R10 R10 K11 ["createElement"]
       93 GETUPVAL                         R11 3
       94 GETTABLEKS                       R11 R11 K12 ["Popover"]
       96 GETTABLEKS                       R11 R11 K13 ["Root"]
       98 DUPTABLE                         R12 K16 [{"LayoutOrder", "isOpen"}]
       99 GETTABLEKS                       R13 R0 K14 ["LayoutOrder"]
      101 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      103 NOT                              R13 R7
      104 SETTABLEKS                       R13 R12 K15 ["isOpen"]
      106 DUPTABLE                         R13 K19 [{"Anchor", "Content"}]
      107 GETUPVAL                         R14 2
      108 GETTABLEKS                       R14 R14 K11 ["createElement"]
      110 GETUPVAL                         R15 3
      111 GETTABLEKS                       R15 R15 K12 ["Popover"]
      113 GETTABLEKS                       R15 R15 K17 ["Anchor"]
      115 DUPTABLE                         R16 K20 [{"LayoutOrder"}]
      116 GETTABLEKS                       R17 R0 K14 ["LayoutOrder"]
      118 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      120 DUPTABLE                         R17 K22 [{"InputContainer"}]
      121 GETUPVAL                         R18 2
      122 GETTABLEKS                       R18 R18 K11 ["createElement"]
      124 GETUPVAL                         R19 3
      125 GETTABLEKS                       R19 R19 K23 ["View"]
      127 DUPTABLE                         R20 K27 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-y padding-left-xsmall padding-right-small gui-object-defaults"}]
      128 GETTABLEKS                       R21 R0 K14 ["LayoutOrder"]
      130 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      132 GETIMPORT                        R21 K30 [UDim2.new]
      134 GETTABLEKS                       R22 R0 K24 ["Size"]
      136 GETTABLEKS                       R22 R22 K31 ["X"]
      138 GETTABLEKS                       R22 R22 K32 ["Scale"]
      140 GETTABLEKS                       R23 R0 K24 ["Size"]
      142 GETTABLEKS                       R23 R23 K31 ["X"]
      144 GETTABLEKS                       R23 R23 K33 ["Offset"]
      146 LOADN                            R24 0
      147 LOADN                            R25 0
      148 CALL                             R21 4 1
      149 SETTABLEKS                       R21 R20 K24 ["Size"]
      151 DUPTABLE                         R21 K35 [{"Input"}]
      152 GETUPVAL                         R22 2
      153 GETTABLEKS                       R22 R22 K11 ["createElement"]
      155 GETUPVAL                         R23 3
      156 GETTABLEKS                       R23 R23 K36 ["TextInput"]
      158 DUPTABLE                         R24 K46 [{["LayoutOrder"], ["text"], ["label"] = "", ["onChanged"], ["textBoxRef"], ["onFocusLost"], ["size"], ["width"], ["hasError"]}]
      159 GETTABLEKS                       R25 R0 K14 ["LayoutOrder"]
      161 SETTABLEKS                       R25 R24 K14 ["LayoutOrder"]
      163 SETTABLEKS                       R4 R24 K37 ["text"]
      165 SETTABLEKS                       R5 R24 K40 ["onChanged"]
      167 SETTABLEKS                       R3 R24 K41 ["textBoxRef"]
      169 SETTABLEKS                       R9 R24 K42 ["onFocusLost"]
      171 GETUPVAL                         R25 3
      172 GETTABLEKS                       R25 R25 K47 ["Enums"]
      174 GETTABLEKS                       R25 R25 K48 ["InputSize"]
      176 GETTABLEKS                       R25 R25 K49 ["XSmall"]
      178 SETTABLEKS                       R25 R24 K43 ["size"]
      180 GETIMPORT                        R25 K51 [UDim.new]
      182 LOADN                            R26 1
      183 LOADN                            R27 0
      184 CALL                             R25 2 1
      185 SETTABLEKS                       R25 R24 K44 ["width"]
      187 NOT                              R25 R7
      188 SETTABLEKS                       R25 R24 K45 ["hasError"]
      190 CALL                             R22 2 1
      191 SETTABLEKS                       R22 R21 K34 ["Input"]
      193 CALL                             R18 3 1
      194 SETTABLEKS                       R18 R17 K21 ["InputContainer"]
      196 CALL                             R14 3 1
      197 SETTABLEKS                       R14 R13 K17 ["Anchor"]
      199 NOT                              R14 R7
      200 JUMPIFNOT                        R14 ; [+49]
      201 GETUPVAL                         R14 2
      202 GETTABLEKS                       R14 R14 K11 ["createElement"]
      204 GETUPVAL                         R15 3
      205 GETTABLEKS                       R15 R15 K12 ["Popover"]
      207 GETTABLEKS                       R15 R15 K18 ["Content"]
      209 DUPTABLE                         R16 K57 [{["align"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      210 GETUPVAL                         R17 3
      211 GETTABLEKS                       R17 R17 K47 ["Enums"]
      213 GETTABLEKS                       R17 R17 K58 ["PopoverAlign"]
      215 GETTABLEKS                       R17 R17 K59 ["Start"]
      217 SETTABLEKS                       R17 R16 K52 ["align"]
      219 GETUPVAL                         R17 3
      220 GETTABLEKS                       R17 R17 K47 ["Enums"]
      222 GETTABLEKS                       R17 R17 K60 ["Radius"]
      224 GETTABLEKS                       R17 R17 K61 ["Small"]
      226 SETTABLEKS                       R17 R16 K53 ["radius"]
      228 GETTABLEKS                       R17 R6 K62 ["Inverse"]
      230 GETTABLEKS                       R17 R17 K63 ["Surface"]
      232 GETTABLEKS                       R17 R17 K64 ["Surface_0"]
      234 SETTABLEKS                       R17 R16 K54 ["backgroundStyle"]
      236 DUPTABLE                         R17 K66 [{"HelperText"}]
      237 GETUPVAL                         R18 2
      238 GETTABLEKS                       R18 R18 K11 ["createElement"]
      240 GETUPVAL                         R19 3
      241 GETTABLEKS                       R19 R19 K67 ["Text"]
      243 DUPTABLE                         R20 K73 [{["Text"], ["RichText"] = True, ["tag"] = "size-0 auto-xy padding-xsmall text-body-small text-wrap text-align-x-left content-inverse-default", ["testId"] = "edit-name-input-helper-text"}]
      244 SETTABLEKS                       R8 R20 K67 ["Text"]
      246 CALL                             R18 2 1
      247 SETTABLEKS                       R18 R17 K65 ["HelperText"]
      249 CALL                             R14 3 1
      250 SETTABLEKS                       R14 R13 K18 ["Content"]
      252 CALL                             R10 3 -1
      253 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Controllers"]
       34 GETTABLEKS                       R5 R5 K12 ["ItemsController"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Networking"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Util"]
       50 GETTABLEKS                       R7 R7 K15 ["escapeRichText"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R8 K14 ["Util"]
       59 GETTABLEKS                       R8 R8 K16 ["PlaceManagement"]
       61 GETTABLEKS                       R8 R8 K17 ["renamePlace"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Src"]
       68 GETTABLEKS                       R9 R9 K14 ["Util"]
       70 GETTABLEKS                       R9 R9 K18 ["validateFolderName"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K6 ["Src"]
       77 GETTABLEKS                       R10 R10 K19 ["Flags"]
       79 GETTABLEKS                       R10 R10 K20 ["getFFlagAmrRemoveAssetManagerServiceDependency"]
       81 CALL                             R9 1 1
       82 DUPCLOSURE                       R10 K21 [PROTO_4]
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R7
       92 RETURN                           R10 1
