PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["focus"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["current"]
       13 GETTABLEKS                       R0 R1 K2 ["setSelectionStart"]
       15 LOADN                            R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ItemType"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["AssetType"]
        6 GETTABLEKS                       R1 R2 K2 ["Folder"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["ItemType"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["AssetType"]
        8 GETTABLEKS                       R1 R2 K2 ["Folder"]
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
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        4 GETIMPORT                        R3 K3 [Enum.KeyCode.Escape]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIF                           R1 ; [+2]
       11 GETUPVAL                         R2 0
       12 JUMPIF                           R2 ; [+4]
       13 GETUPVAL                         R2 1
       14 NAMECALL                         R2 R2 K4 ["removeStagedItem"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K5 ["ItemType"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R4 R5 K6 ["AssetType"]
       23 GETTABLEKS                       R3 R4 K7 ["Folder"]
       25 JUMPIFNOTEQ                      R2 R3 ; [+10]
       27 GETUPVAL                         R2 1
       28 GETUPVAL                         R4 4
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K8 ["ItemPath"]
       32 NAMECALL                         R2 R2 K9 ["finalizeFolder"]
       34 CALL                             R2 3 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K5 ["ItemType"]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R4 R5 K6 ["AssetType"]
       42 GETTABLEKS                       R3 R4 K10 ["Place"]
       44 JUMPIFNOTEQ                      R2 R3 ; [+9]
       46 GETUPVAL                         R2 1
       47 GETUPVAL                         R4 4
       48 GETUPVAL                         R6 2
       49 GETTABLEKS                       R5 R6 K8 ["ItemPath"]
       51 NAMECALL                         R2 R2 K11 ["renamePlace"]
       53 CALL                             R2 3 0
       54 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useRef"]
        7 LOADNIL                          R3
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["useState"]
       12 GETTABLEKS                       R4 R0 K3 ["InitialText"]
       14 CALL                             R3 1 2
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K4 ["Hooks"]
       18 GETTABLEKS                       R5 R6 K5 ["useTokens"]
       20 CALL                             R5 0 1
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K6 ["useEffect"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R8 0 0
       28 CALL                             R6 2 0
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K7 ["useMemo"]
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
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R7 R8 K7 ["useMemo"]
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
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R8 R9 K9 ["useCallback"]
       64 NEWCLOSURE                       R9 P3
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          VAL R3
       70 NEWTABLE                         R10 0 5
       72 MOVE                             R11 R3
       73 MOVE                             R12 R6
       74 GETTABLEKS                       R13 R0 K3 ["InitialText"]
       76 GETTABLEKS                       R14 R0 K10 ["ItemPath"]
       78 GETTABLEKS                       R15 R0 K8 ["ItemType"]
       80 SETLIST                          R10 R11 5 [1]
       82 CALL                             R8 2 1
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R9 R10 K11 ["createElement"]
       86 GETUPVAL                         R12 2
       87 GETTABLEKS                       R11 R12 K12 ["Popover"]
       89 GETTABLEKS                       R10 R11 K13 ["Root"]
       91 DUPTABLE                         R11 K16 [{"LayoutOrder", "isOpen"}]
       92 GETTABLEKS                       R12 R0 K14 ["LayoutOrder"]
       94 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       96 NOT                              R12 R6
       97 SETTABLEKS                       R12 R11 K15 ["isOpen"]
       99 DUPTABLE                         R12 K19 [{"Anchor", "Content"}]
      100 GETUPVAL                         R14 1
      101 GETTABLEKS                       R13 R14 K11 ["createElement"]
      103 GETUPVAL                         R16 2
      104 GETTABLEKS                       R15 R16 K12 ["Popover"]
      106 GETTABLEKS                       R14 R15 K17 ["Anchor"]
      108 DUPTABLE                         R15 K20 [{"LayoutOrder"}]
      109 GETTABLEKS                       R16 R0 K14 ["LayoutOrder"]
      111 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      113 DUPTABLE                         R16 K22 [{"InputContainer"}]
      114 GETUPVAL                         R18 1
      115 GETTABLEKS                       R17 R18 K11 ["createElement"]
      117 GETUPVAL                         R19 2
      118 GETTABLEKS                       R18 R19 K23 ["View"]
      120 DUPTABLE                         R19 K27 [{"BackgroundTransparency", "Size", "tag"}]
      121 LOADN                            R20 1
      122 SETTABLEKS                       R20 R19 K24 ["BackgroundTransparency"]
      124 GETIMPORT                        R20 K30 [UDim2.new]
      126 GETTABLEKS                       R23 R0 K25 ["Size"]
      128 GETTABLEKS                       R22 R23 K31 ["X"]
      130 GETTABLEKS                       R21 R22 K32 ["Scale"]
      132 GETTABLEKS                       R24 R0 K25 ["Size"]
      134 GETTABLEKS                       R23 R24 K31 ["X"]
      136 GETTABLEKS                       R22 R23 K33 ["Offset"]
      138 LOADN                            R23 0
      139 LOADN                            R24 0
      140 CALL                             R20 4 1
      141 SETTABLEKS                       R20 R19 K25 ["Size"]
      143 LOADK                            R20 K34 ["gui-object-defaults padding-left-xsmall padding-right-small auto-y"]
      144 SETTABLEKS                       R20 R19 K26 ["tag"]
      146 DUPTABLE                         R20 K36 [{"Input"}]
      147 GETUPVAL                         R22 1
      148 GETTABLEKS                       R21 R22 K11 ["createElement"]
      150 GETUPVAL                         R23 2
      151 GETTABLEKS                       R22 R23 K37 ["TextInput"]
      153 DUPTABLE                         R23 K46 [{"LayoutOrder", "text", "label", "onChanged", "textBoxRef", "onFocusLost", "size", "width", "hasError"}]
      154 GETTABLEKS                       R24 R0 K14 ["LayoutOrder"]
      156 SETTABLEKS                       R24 R23 K14 ["LayoutOrder"]
      158 SETTABLEKS                       R3 R23 K38 ["text"]
      160 LOADK                            R24 K47 [""]
      161 SETTABLEKS                       R24 R23 K39 ["label"]
      163 SETTABLEKS                       R4 R23 K40 ["onChanged"]
      165 SETTABLEKS                       R2 R23 K41 ["textBoxRef"]
      167 SETTABLEKS                       R8 R23 K42 ["onFocusLost"]
      169 GETUPVAL                         R27 2
      170 GETTABLEKS                       R26 R27 K48 ["Enums"]
      172 GETTABLEKS                       R25 R26 K49 ["InputSize"]
      174 GETTABLEKS                       R24 R25 K50 ["XSmall"]
      176 SETTABLEKS                       R24 R23 K43 ["size"]
      178 GETIMPORT                        R24 K52 [UDim.new]
      180 LOADN                            R25 1
      181 LOADN                            R26 0
      182 CALL                             R24 2 1
      183 SETTABLEKS                       R24 R23 K44 ["width"]
      185 NOT                              R24 R6
      186 SETTABLEKS                       R24 R23 K45 ["hasError"]
      188 CALL                             R21 2 1
      189 SETTABLEKS                       R21 R20 K35 ["Input"]
      191 CALL                             R17 3 1
      192 SETTABLEKS                       R17 R16 K21 ["InputContainer"]
      194 CALL                             R13 3 1
      195 SETTABLEKS                       R13 R12 K17 ["Anchor"]
      197 NOT                              R13 R6
      198 JUMPIFNOT                        R13 ; [+58]
      199 GETUPVAL                         R14 1
      200 GETTABLEKS                       R13 R14 K11 ["createElement"]
      202 GETUPVAL                         R16 2
      203 GETTABLEKS                       R15 R16 K12 ["Popover"]
      205 GETTABLEKS                       R14 R15 K18 ["Content"]
      207 DUPTABLE                         R15 K57 [{"align", "radius", "backgroundStyle", "selectionGroup"}]
      208 GETUPVAL                         R19 2
      209 GETTABLEKS                       R18 R19 K48 ["Enums"]
      211 GETTABLEKS                       R17 R18 K58 ["PopoverAlign"]
      213 GETTABLEKS                       R16 R17 K59 ["Start"]
      215 SETTABLEKS                       R16 R15 K53 ["align"]
      217 GETUPVAL                         R19 2
      218 GETTABLEKS                       R18 R19 K48 ["Enums"]
      220 GETTABLEKS                       R17 R18 K60 ["Radius"]
      222 GETTABLEKS                       R16 R17 K61 ["Small"]
      224 SETTABLEKS                       R16 R15 K54 ["radius"]
      226 GETTABLEKS                       R18 R5 K62 ["Inverse"]
      228 GETTABLEKS                       R17 R18 K63 ["Surface"]
      230 GETTABLEKS                       R16 R17 K64 ["Surface_0"]
      232 SETTABLEKS                       R16 R15 K55 ["backgroundStyle"]
      234 LOADB                            R16 0
      235 SETTABLEKS                       R16 R15 K56 ["selectionGroup"]
      237 DUPTABLE                         R16 K66 [{"HelperText"}]
      238 GETUPVAL                         R18 1
      239 GETTABLEKS                       R17 R18 K11 ["createElement"]
      241 GETUPVAL                         R19 2
      242 GETTABLEKS                       R18 R19 K67 ["Text"]
      244 DUPTABLE                         R19 K69 [{"Text", "RichText", "tag"}]
      245 SETTABLEKS                       R7 R19 K67 ["Text"]
      247 LOADB                            R20 1
      248 SETTABLEKS                       R20 R19 K68 ["RichText"]
      250 LOADK                            R20 K70 ["size-0 text-wrap text-align-x-left auto-xy padding-xsmall text-body-small content-inverse-default data-testid=edit-name-input-helper-text"]
      251 SETTABLEKS                       R20 R19 K26 ["tag"]
      253 CALL                             R17 2 1
      254 SETTABLEKS                       R17 R16 K65 ["HelperText"]
      256 CALL                             R13 3 1
      257 SETTABLEKS                       R13 R12 K18 ["Content"]
      259 CALL                             R9 3 -1
      260 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Controllers"]
       34 GETTABLEKS                       R5 R6 K12 ["ItemsController"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Util"]
       43 GETTABLEKS                       R6 R7 K14 ["escapeRichText"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Src"]
       50 GETTABLEKS                       R8 R9 K13 ["Util"]
       52 GETTABLEKS                       R7 R8 K15 ["validateFolderName"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K16 [PROTO_4]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R5
       62 RETURN                           R7 1
