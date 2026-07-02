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
        1 JUMPIF                           R0 ; [+19]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["ItemType"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["AssetType"]
        8 GETTABLEKS                       R1 R1 K2 ["Folder"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+10]
       12 LOADK                            R1 K3 ["Folder names cannot contain <b>%*</b> or end with a period."]
       13 GETUPVAL                         R3 3
       14 LOADK                            R4 K4 ["< > : \" / \\ | ? *"]
       15 CALL                             R3 1 1
       16 NAMECALL                         R1 R1 K5 ["format"]
       18 CALL                             R1 2 1
       19 MOVE                             R0 R1
       20 RETURN                           R0 1
       21 LOADNIL                          R0
       22 RETURN                           R0 1

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
       57 JUMPIFNOTEQ                      R2 R3 ; [+9]
       59 GETUPVAL                         R2 3
       60 GETUPVAL                         R4 2
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K9 ["ItemPath"]
       64 NAMECALL                         R2 R2 K12 ["renamePlace"]
       66 CALL                             R2 3 0
       67 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useRef"]
        7 LOADNIL                          R3
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["useState"]
       12 GETTABLEKS                       R4 R0 K3 ["InitialText"]
       14 CALL                             R3 1 2
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K4 ["Hooks"]
       18 GETTABLEKS                       R5 R5 K5 ["useTokens"]
       20 CALL                             R5 0 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R8 0 0
       28 CALL                             R6 2 0
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R3
       37 NEWTABLE                         R8 0 2
       39 MOVE                             R9 R3
       40 GETTABLEKS                       R10 R0 K8 ["ItemType"]
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U5
       53 NEWTABLE                         R9 0 2
       55 MOVE                             R10 R6
       56 GETTABLEKS                       R11 R0 K8 ["ItemType"]
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 1
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K9 ["useCallback"]
       64 NEWCLOSURE                       R9 P3
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U3
       70 NEWTABLE                         R10 0 5
       72 MOVE                             R11 R3
       73 MOVE                             R12 R6
       74 GETTABLEKS                       R13 R0 K3 ["InitialText"]
       76 GETTABLEKS                       R14 R0 K10 ["ItemPath"]
       78 GETTABLEKS                       R15 R0 K8 ["ItemType"]
       80 SETLIST                          R10 R11 5 [1]
       82 CALL                             R8 2 1
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K11 ["createElement"]
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R10 R10 K12 ["Popover"]
       89 GETTABLEKS                       R10 R10 K13 ["Root"]
       91 DUPTABLE                         R11 K16 [{"LayoutOrder", "isOpen"}]
       92 GETTABLEKS                       R12 R0 K14 ["LayoutOrder"]
       94 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       96 NOT                              R12 R6
       97 SETTABLEKS                       R12 R11 K15 ["isOpen"]
       99 DUPTABLE                         R12 K19 [{"Anchor", "Content"}]
      100 GETUPVAL                         R13 1
      101 GETTABLEKS                       R13 R13 K11 ["createElement"]
      103 GETUPVAL                         R14 2
      104 GETTABLEKS                       R14 R14 K12 ["Popover"]
      106 GETTABLEKS                       R14 R14 K17 ["Anchor"]
      108 DUPTABLE                         R15 K20 [{"LayoutOrder"}]
      109 GETTABLEKS                       R16 R0 K14 ["LayoutOrder"]
      111 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      113 DUPTABLE                         R16 K22 [{"InputContainer"}]
      114 GETUPVAL                         R17 1
      115 GETTABLEKS                       R17 R17 K11 ["createElement"]
      117 GETUPVAL                         R18 2
      118 GETTABLEKS                       R18 R18 K23 ["View"]
      120 DUPTABLE                         R19 K27 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-y padding-left-xsmall padding-right-small gui-object-defaults"}]
      121 GETTABLEKS                       R20 R0 K14 ["LayoutOrder"]
      123 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      125 GETIMPORT                        R20 K30 [UDim2.new]
      127 GETTABLEKS                       R21 R0 K24 ["Size"]
      129 GETTABLEKS                       R21 R21 K31 ["X"]
      131 GETTABLEKS                       R21 R21 K32 ["Scale"]
      133 GETTABLEKS                       R22 R0 K24 ["Size"]
      135 GETTABLEKS                       R22 R22 K31 ["X"]
      137 GETTABLEKS                       R22 R22 K33 ["Offset"]
      139 LOADN                            R23 0
      140 LOADN                            R24 0
      141 CALL                             R20 4 1
      142 SETTABLEKS                       R20 R19 K24 ["Size"]
      144 DUPTABLE                         R20 K35 [{"Input"}]
      145 GETUPVAL                         R21 1
      146 GETTABLEKS                       R21 R21 K11 ["createElement"]
      148 GETUPVAL                         R22 2
      149 GETTABLEKS                       R22 R22 K36 ["TextInput"]
      151 DUPTABLE                         R23 K46 [{["LayoutOrder"], ["text"], ["label"] = "", ["onChanged"], ["textBoxRef"], ["onFocusLost"], ["size"], ["width"], ["hasError"]}]
      152 GETTABLEKS                       R24 R0 K14 ["LayoutOrder"]
      154 SETTABLEKS                       R24 R23 K14 ["LayoutOrder"]
      156 SETTABLEKS                       R3 R23 K37 ["text"]
      158 SETTABLEKS                       R4 R23 K40 ["onChanged"]
      160 SETTABLEKS                       R2 R23 K41 ["textBoxRef"]
      162 SETTABLEKS                       R8 R23 K42 ["onFocusLost"]
      164 GETUPVAL                         R24 2
      165 GETTABLEKS                       R24 R24 K47 ["Enums"]
      167 GETTABLEKS                       R24 R24 K48 ["InputSize"]
      169 GETTABLEKS                       R24 R24 K49 ["XSmall"]
      171 SETTABLEKS                       R24 R23 K43 ["size"]
      173 GETIMPORT                        R24 K51 [UDim.new]
      175 LOADN                            R25 1
      176 LOADN                            R26 0
      177 CALL                             R24 2 1
      178 SETTABLEKS                       R24 R23 K44 ["width"]
      180 NOT                              R24 R6
      181 SETTABLEKS                       R24 R23 K45 ["hasError"]
      183 CALL                             R21 2 1
      184 SETTABLEKS                       R21 R20 K34 ["Input"]
      186 CALL                             R17 3 1
      187 SETTABLEKS                       R17 R16 K21 ["InputContainer"]
      189 CALL                             R13 3 1
      190 SETTABLEKS                       R13 R12 K17 ["Anchor"]
      192 NOT                              R13 R6
      193 JUMPIFNOT                        R13 ; [+49]
      194 GETUPVAL                         R13 1
      195 GETTABLEKS                       R13 R13 K11 ["createElement"]
      197 GETUPVAL                         R14 2
      198 GETTABLEKS                       R14 R14 K12 ["Popover"]
      200 GETTABLEKS                       R14 R14 K18 ["Content"]
      202 DUPTABLE                         R15 K57 [{["align"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      203 GETUPVAL                         R16 2
      204 GETTABLEKS                       R16 R16 K47 ["Enums"]
      206 GETTABLEKS                       R16 R16 K58 ["PopoverAlign"]
      208 GETTABLEKS                       R16 R16 K59 ["Start"]
      210 SETTABLEKS                       R16 R15 K52 ["align"]
      212 GETUPVAL                         R16 2
      213 GETTABLEKS                       R16 R16 K47 ["Enums"]
      215 GETTABLEKS                       R16 R16 K60 ["Radius"]
      217 GETTABLEKS                       R16 R16 K61 ["Small"]
      219 SETTABLEKS                       R16 R15 K53 ["radius"]
      221 GETTABLEKS                       R16 R5 K62 ["Inverse"]
      223 GETTABLEKS                       R16 R16 K63 ["Surface"]
      225 GETTABLEKS                       R16 R16 K64 ["Surface_0"]
      227 SETTABLEKS                       R16 R15 K54 ["backgroundStyle"]
      229 DUPTABLE                         R16 K66 [{"HelperText"}]
      230 GETUPVAL                         R17 1
      231 GETTABLEKS                       R17 R17 K11 ["createElement"]
      233 GETUPVAL                         R18 2
      234 GETTABLEKS                       R18 R18 K67 ["Text"]
      236 DUPTABLE                         R19 K73 [{["Text"], ["RichText"] = True, ["tag"] = "size-0 auto-xy padding-xsmall text-body-small text-wrap text-align-x-left content-inverse-default", ["testId"] = "edit-name-input-helper-text"}]
      237 SETTABLEKS                       R7 R19 K67 ["Text"]
      239 CALL                             R17 2 1
      240 SETTABLEKS                       R17 R16 K65 ["HelperText"]
      242 CALL                             R13 3 1
      243 SETTABLEKS                       R13 R12 K18 ["Content"]
      245 CALL                             R9 3 -1
      246 RETURN                           R9 -1

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
       41 GETTABLEKS                       R6 R6 K13 ["Util"]
       43 GETTABLEKS                       R6 R6 K14 ["escapeRichText"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K13 ["Util"]
       52 GETTABLEKS                       R7 R7 K15 ["validateFolderName"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K16 [PROTO_4]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R5
       62 RETURN                           R7 1
